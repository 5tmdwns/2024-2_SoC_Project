// file = 0; split type = patterns; threshold = 100000; total count = 0.
#include <stdio.h>
#include <stdlib.h>
#include <strings.h>
#include "rmapats.h"

void  schedNewEvent (struct dummyq_struct * I1405, EBLK  * I1400, U  I622);
void  schedNewEvent (struct dummyq_struct * I1405, EBLK  * I1400, U  I622)
{
    U  I1669;
    U  I1670;
    U  I1671;
    struct futq * I1672;
    struct dummyq_struct * pQ = I1405;
    I1669 = ((U )vcs_clocks) + I622;
    I1671 = I1669 & ((1 << fHashTableSize) - 1);
    I1400->I664 = (EBLK  *)(-1);
    I1400->I665 = I1669;
    if (0 && rmaProfEvtProp) {
        vcs_simpSetEBlkEvtID(I1400);
    }
    if (I1669 < (U )vcs_clocks) {
        I1670 = ((U  *)&vcs_clocks)[1];
        sched_millenium(pQ, I1400, I1670 + 1, I1669);
    }
    else if ((peblkFutQ1Head != ((void *)0)) && (I622 == 1)) {
        I1400->I667 = (struct eblk *)peblkFutQ1Tail;
        peblkFutQ1Tail->I664 = I1400;
        peblkFutQ1Tail = I1400;
    }
    else if ((I1672 = pQ->I1308[I1671].I687)) {
        I1400->I667 = (struct eblk *)I1672->I685;
        I1672->I685->I664 = (RP )I1400;
        I1672->I685 = (RmaEblk  *)I1400;
    }
    else {
        sched_hsopt(pQ, I1400, I1669);
    }
}
void  rmaPropagate3 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    scalar  I1539;
    scalar  I1540;
    scalar  I1141;
    scalar  I1541;
    scalar  * I1542;
    UB  * I1543;
    U  I1544 = 0;
    U  I1545;
    U  I1546 = 0;
    scalar  I1547;
    US  * I1548;
    US  I1549 = 0;
    UB  * I1103;
    UB  * I1550;
    RP  I1551 = 0;
    I1545 = (U )*(pcode + 24 + 3);
    *(pcode + 24 + 3) = 0;
    I1550 = pcode + 24;
    if (I1545) {
        *I1550 = val;
    }
    else {
        I1540 = *(pcode + 24 + 2);
        I1539 = val;
        if (I1539 != I1540) {
            I1544 = 1;
        }
        if (I1540 == 0xff) {
            I1540 = 0;
            I1546 = 1;
        }
        I1103 = pcode + 24 + 1U;
        *I1103 = I1539;
        if (!I1544) {
            return  ;
        }
        *(pcode + 24 + 2) = I1539;
    }
    if (!I1545) {
        I1542 = *(scalar  **)((*(RP  **)(pcode + 32)));
        I1141 = *(I1542 + I1539);
        *I1550 = I1141;
        val = I1141;
        I1541 = *(I1542 + I1540);
        I1547 = *(I1542 + (28));
        I1543 = (UB  *)(*((*(RP  **)(pcode + 32)) + 1));
        I1548 = edgeActionT + (9 * ((I1540 << 7U) + (I1539 << 2U) + I1547));
        I1549 = I1548[0];
    }
    if (I1544) {
        rmaScheduleGatedClockEdgeLoadNew(pcode + 40, I1548, 1U, I1543, I1543, I1539, I1540);
    }
    {
        scalar  newval;
        U  state;
        U  startBit;
        UB  * pcode1;
        pcode1 = *(UB  **)(pcode + 104);
        {
            RP  I1504 = 1;
            if (I1504 && I1544) {
                startBit = *(U  *)(pcode + 96);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(31U << startBit);
                state |= I1539 << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
        pcode += 112;
        pcode1 = *(UB  **)(pcode + 8);
        {
            RP  I1504 = 1;
            if (I1504 && I1544) {
                startBit = *(U  *)(pcode + 0);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(31U << startBit);
                state |= I1539 << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
    }
    if (!I1545 && !(I1549 & ~33825) && !I1546) {
        return  ;
    }
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 16);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    pcode += 24;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate3_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 24 + 1U);
    *(pcode + 24 + 1U) = 24;
    rmaPropagate3(pcode, val);
}
void  rmaPropagate8 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    *(pcode + 1) = X4val[val];
    {
        unsigned long long * I1799 = derivedClk + (4U * X4val[val]);
        memcpy(pcode + 2 + 4, I1799, 25U);
    }
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 32);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        I1141 = X4val[val];
        I1628 = *(pcode + 40);
        *(pcode + 40) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 8718) {
            *(RmaTimeStamp  *)(pcode + 48) = (RmaTimeStamp )vcs_clocks;
        }
    }
    pcode += 56;
    {
        EBLK  * I1400;
        *((*(UB  **)(pcode + 8)) + 1) = X4val[val];
        I1400 = (EBLK  *)(pcode + 0);
        if (I1400->I664 == 0) {
            struct dummyq_struct * pQ;
            U  I1403;
            I1403 = 0;
            pQ = (struct dummyq_struct *)ref_vcs_clocks;
            EBLK  * I1598 = (EBLK  *)pvcsGetLastEventEblk(I1403);
            I1400->I664 = pQ->I1335;
            pQ->I1335 = I1400;
            {
                (pQ->semilerOptQueuesFlag |= (0x1 << 2));
            }
            if (0 && rmaProfEvtProp) {
                vcs_simpSetEBlkEvtID(I1400);
            }
            I1400 = I1598;
            if (!(I1400->I664)) {
                if ((semilerOpt != 0) && (I1598 == I1400)) {
                }
                else {
                    pQ->I1324->I664 = I1400;
                    pQ->I1324 = I1400;
                }
                I1400->I664 = ((EBLK  *)-1);
                if (0 && rmaProfEvtProp) {
                    vcs_simpSetEBlkEvtID(I1400);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        US  I235;
        I1141 = X3val[val];
        I1628 = *(pcode + 40);
        I235 = (I1628 << 2) + I1141;
        I1583 = 1 << I235;
        if (I1583 & 12) {
            (*(FP  *)(pcode + 48))(*(void **)(pcode + 56), I235);
        }
        if (I1583 & 8704) {
            (*(FP  *)(pcode + 64))(*(void **)(pcode + 72), I235);
        }
        if (I1583 & 192) {
            (*(FP  *)(pcode + 80))(*(void **)(pcode + 88), I235);
        }
        if (I1583 & 4352) {
            (*(FP  *)(pcode + 96))(*(void **)(pcode + 104), I235);
        }
        if (I1583 & 18432) {
            (*(FP  *)(pcode + 112))(*(void **)(pcode + 120), I235);
        }
        if (I1583 & 2) {
            (*(FP  *)(pcode + 128))(*(void **)(pcode + 136), I235);
        }
        if (I1583 & 16) {
            (*(FP  *)(pcode + 144))(*(void **)(pcode + 152), I235);
        }
        *(pcode + 40U) = I1141;
    }
    {
        scalar  I1801 = X4val[val];
        scalar  I1802 = *(scalar  *)(pcode + 160 + 2U);
        *(scalar  *)(pcode + 160 + 2U) = I1801;
        UB  * I1014 = *(UB  **)(pcode + 160 + 8U);
        if (I1014) {
            U  I1803 = I1801 * 2;
            U  I1804 = 1 << ((I1802 << 2) + I1801);
            *(pcode + 160 + 0U) = 1;
            while (I1014){
                UB  * I1806 = *(UB  **)(I1014 + 16U);
                if ((*(US  *)(I1014 + 0U)) & I1804) {
                    *(*(UB  **)(I1014 + 48U)) = 1;
                    (*(FP  *)(I1014 + 32U))((void *)(*(RP  *)(I1014 + 40U)), (((*(scalar  *)(I1014 + 2U)) >> I1803) & 3));
                }
                I1014 = I1806;
            };
            *(pcode + 160 + 0U) = 0;
            rmaRemoveNonEdgeLoads(pcode + 160);
        }
    }
    pcode += 200;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate8_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate8(pcode, val);
}
void  rmaPropagate10 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    scalar  I1539;
    scalar  I1540;
    scalar  I1141;
    scalar  I1541;
    scalar  * I1542;
    UB  * I1543;
    U  I1544 = 0;
    U  I1545;
    U  I1546 = 0;
    scalar  I1547;
    US  * I1548;
    US  I1549 = 0;
    UB  * I1103;
    UB  * I1550;
    RP  I1551 = 0;
    I1545 = (U )*(pcode + 24 + 3);
    *(pcode + 24 + 3) = 0;
    I1550 = pcode + 24;
    if (I1545) {
        *I1550 = val;
    }
    else {
        I1540 = *(pcode + 24 + 2);
        I1539 = val;
        if (I1539 != I1540) {
            I1544 = 1;
        }
        if (I1540 == 0xff) {
            I1540 = 0;
            I1546 = 1;
        }
        I1103 = pcode + 24 + 1U;
        *I1103 = I1539;
        if (!I1544) {
            return  ;
        }
        *(pcode + 24 + 2) = I1539;
    }
    if (!I1545) {
        I1542 = *(scalar  **)((*(RP  **)(pcode + 32)));
        I1141 = *(I1542 + I1539);
        *I1550 = I1141;
        val = I1141;
        I1541 = *(I1542 + I1540);
        I1547 = *(I1542 + (28));
        I1543 = (UB  *)(*((*(RP  **)(pcode + 32)) + 1));
        I1548 = edgeActionT + (9 * ((I1540 << 7U) + (I1539 << 2U) + I1547));
        I1549 = I1548[0];
    }
    if (I1544) {
        rmaScheduleGatedClockEdgeLoadNew(pcode + 40, I1548, 1U, I1543, I1543, I1539, I1540);
    }
    {
        scalar  newval;
        U  state;
        U  startBit;
        UB  * pcode1;
        pcode1 = *(UB  **)(pcode + 104);
        {
            RP  I1504 = 1;
            if (I1504 && I1544) {
                startBit = *(U  *)(pcode + 96);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(31U << startBit);
                state |= I1539 << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
        pcode += 112;
        pcode1 = *(UB  **)(pcode + 8);
        {
            RP  I1504 = 1;
            if (I1504 && I1544) {
                startBit = *(U  *)(pcode + 0);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(31U << startBit);
                state |= I1539 << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
    }
    if (!I1545 && !(I1549 & ~33825) && !I1546) {
        return  ;
    }
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 16);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        GateCount  I646;
        I646 = *(U  *)(pcode + 24);
        pcode += 32;
        for (; I646 > 0; I646--) {
            {
                typedef
                US
                 stateType;
                typedef
                US
                 * stateTypePtr;
                pcode1 = *(UB  **)(pcode + 0);
                iinput = (U )(((RP )pcode1) & 7);
                pcode1 = (UB  *)(((RP )pcode1) & ~7);
                {
                    RP  I1504 = 1;
                    if (I1504) {
                        state = *(stateTypePtr )(pcode1 + 16U);
                        state &= ~(3 << (iinput * 2));
                        state |= X4val[val] << (iinput * 2);
                        *(stateTypePtr )(pcode1 + 16U) = state;
                        newval = *((*(UB  **)(pcode1 + 8U)) + state);
                        if (newval != *(pcode1 + 18U)) {
                            *(pcode1 + 18U) = newval;
                            (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                        }
                    }
                }
            }
            pcode += 8;
        }
    }
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate10_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 24 + 1U);
    *(pcode + 24 + 1U) = 24;
    rmaPropagate10(pcode, val);
}
void  rmaPropagate12 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    *(pcode + 1) = X4val[val];
    {
        unsigned long long * I1799 = derivedClk + (4U * X4val[val]);
        memcpy(pcode + 2 + 4, I1799, 25U);
    }
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 32);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        I1141 = X4val[val];
        I1628 = *(pcode + 40);
        *(pcode + 40) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 8718) {
            *(RmaTimeStamp  *)(pcode + 48) = (RmaTimeStamp )vcs_clocks;
        }
    }
    pcode += 56;
    {
        EBLK  * I1400;
        *((*(UB  **)(pcode + 8)) + 1) = X4val[val];
        I1400 = (EBLK  *)(pcode + 0);
        if (I1400->I664 == 0) {
            struct dummyq_struct * pQ;
            U  I1403;
            I1403 = 0;
            pQ = (struct dummyq_struct *)ref_vcs_clocks;
            EBLK  * I1598 = (EBLK  *)pvcsGetLastEventEblk(I1403);
            I1400->I664 = pQ->I1335;
            pQ->I1335 = I1400;
            {
                (pQ->semilerOptQueuesFlag |= (0x1 << 2));
            }
            if (0 && rmaProfEvtProp) {
                vcs_simpSetEBlkEvtID(I1400);
            }
            I1400 = I1598;
            if (!(I1400->I664)) {
                if ((semilerOpt != 0) && (I1598 == I1400)) {
                }
                else {
                    pQ->I1324->I664 = I1400;
                    pQ->I1324 = I1400;
                }
                I1400->I664 = ((EBLK  *)-1);
                if (0 && rmaProfEvtProp) {
                    vcs_simpSetEBlkEvtID(I1400);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        US  I235;
        I1141 = X3val[val];
        I1628 = *(pcode + 40);
        I235 = (I1628 << 2) + I1141;
        I1583 = 1 << I235;
        if (I1583 & 12) {
            (*(FP  *)(pcode + 48))(*(void **)(pcode + 56), I235);
        }
        if (I1583 & 8704) {
            (*(FP  *)(pcode + 64))(*(void **)(pcode + 72), I235);
        }
        if (I1583 & 192) {
            (*(FP  *)(pcode + 80))(*(void **)(pcode + 88), I235);
        }
        if (I1583 & 4352) {
            (*(FP  *)(pcode + 96))(*(void **)(pcode + 104), I235);
        }
        if (I1583 & 18432) {
            (*(FP  *)(pcode + 112))(*(void **)(pcode + 120), I235);
        }
        if (I1583 & 2) {
            (*(FP  *)(pcode + 128))(*(void **)(pcode + 136), I235);
        }
        if (I1583 & 16) {
            (*(FP  *)(pcode + 144))(*(void **)(pcode + 152), I235);
        }
        *(pcode + 40U) = I1141;
    }
    {
        scalar  I1801 = X4val[val];
        scalar  I1802 = *(scalar  *)(pcode + 160 + 2U);
        *(scalar  *)(pcode + 160 + 2U) = I1801;
        UB  * I1014 = *(UB  **)(pcode + 160 + 8U);
        if (I1014) {
            U  I1803 = I1801 * 2;
            U  I1804 = 1 << ((I1802 << 2) + I1801);
            *(pcode + 160 + 0U) = 1;
            while (I1014){
                UB  * I1806 = *(UB  **)(I1014 + 16U);
                if ((*(US  *)(I1014 + 0U)) & I1804) {
                    *(*(UB  **)(I1014 + 48U)) = 1;
                    (*(FP  *)(I1014 + 32U))((void *)(*(RP  *)(I1014 + 40U)), (((*(scalar  *)(I1014 + 2U)) >> I1803) & 3));
                }
                I1014 = I1806;
            };
            *(pcode + 160 + 0U) = 0;
            rmaRemoveNonEdgeLoads(pcode + 160);
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        GateCount  I646;
        I646 = *(U  *)(pcode + 200);
        pcode += 208;
        for (; I646 > 0; I646--) {
            {
                typedef
                US
                 stateType;
                typedef
                US
                 * stateTypePtr;
                pcode1 = *(UB  **)(pcode + 0);
                iinput = (U )(((RP )pcode1) & 7);
                pcode1 = (UB  *)(((RP )pcode1) & ~7);
                {
                    RP  I1504 = 1;
                    if (I1504) {
                        state = *(stateTypePtr )(pcode1 + 16U);
                        state &= ~(3 << (iinput * 2));
                        state |= X4val[val] << (iinput * 2);
                        *(stateTypePtr )(pcode1 + 16U) = state;
                        newval = *((*(UB  **)(pcode1 + 8U)) + state);
                        if (newval != *(pcode1 + 18U)) {
                            *(pcode1 + 18U) = newval;
                            (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                        }
                    }
                }
            }
            pcode += 8;
        }
    }
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate12_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate12(pcode, val);
}
void  rmaPropagate16 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    *(pcode + 1) = X4val[val];
    {
        unsigned long long * I1799 = derivedClk + (4U * X4val[val]);
        memcpy(pcode + 2 + 4, I1799, 25U);
    }
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 32);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        I1141 = X4val[val];
        I1628 = *(pcode + 40);
        *(pcode + 40) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 4560) {
            *(RmaTimeStamp  *)(pcode + 48) = (RmaTimeStamp )vcs_clocks;
        }
    }
    pcode += 56;
    {
        EBLK  * I1400;
        *((*(UB  **)(pcode + 8)) + 1) = X4val[val];
        I1400 = (EBLK  *)(pcode + 0);
        if (I1400->I664 == 0) {
            struct dummyq_struct * pQ;
            U  I1403;
            I1403 = 0;
            pQ = (struct dummyq_struct *)ref_vcs_clocks;
            EBLK  * I1598 = (EBLK  *)pvcsGetLastEventEblk(I1403);
            I1400->I664 = pQ->I1335;
            pQ->I1335 = I1400;
            {
                (pQ->semilerOptQueuesFlag |= (0x1 << 2));
            }
            if (0 && rmaProfEvtProp) {
                vcs_simpSetEBlkEvtID(I1400);
            }
            I1400 = I1598;
            if (!(I1400->I664)) {
                if ((semilerOpt != 0) && (I1598 == I1400)) {
                }
                else {
                    pQ->I1324->I664 = I1400;
                    pQ->I1324 = I1400;
                }
                I1400->I664 = ((EBLK  *)-1);
                if (0 && rmaProfEvtProp) {
                    vcs_simpSetEBlkEvtID(I1400);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        US  I235;
        I1141 = X3val[val];
        I1628 = *(pcode + 40);
        I235 = (I1628 << 2) + I1141;
        I1583 = 1 << I235;
        if (I1583 & 12) {
            (*(FP  *)(pcode + 48))(*(void **)(pcode + 56), I235);
        }
        if (I1583 & 8704) {
            (*(FP  *)(pcode + 64))(*(void **)(pcode + 72), I235);
        }
        if (I1583 & 192) {
            (*(FP  *)(pcode + 80))(*(void **)(pcode + 88), I235);
        }
        if (I1583 & 4352) {
            (*(FP  *)(pcode + 96))(*(void **)(pcode + 104), I235);
        }
        if (I1583 & 18432) {
            (*(FP  *)(pcode + 112))(*(void **)(pcode + 120), I235);
        }
        if (I1583 & 2) {
            (*(FP  *)(pcode + 128))(*(void **)(pcode + 136), I235);
        }
        if (I1583 & 16) {
            (*(FP  *)(pcode + 144))(*(void **)(pcode + 152), I235);
        }
        *(pcode + 40U) = I1141;
    }
    {
        scalar  I1801 = X4val[val];
        scalar  I1802 = *(scalar  *)(pcode + 160 + 2U);
        *(scalar  *)(pcode + 160 + 2U) = I1801;
        UB  * I1014 = *(UB  **)(pcode + 160 + 8U);
        if (I1014) {
            U  I1803 = I1801 * 2;
            U  I1804 = 1 << ((I1802 << 2) + I1801);
            *(pcode + 160 + 0U) = 1;
            while (I1014){
                UB  * I1806 = *(UB  **)(I1014 + 16U);
                if ((*(US  *)(I1014 + 0U)) & I1804) {
                    *(*(UB  **)(I1014 + 48U)) = 1;
                    (*(FP  *)(I1014 + 32U))((void *)(*(RP  *)(I1014 + 40U)), (((*(scalar  *)(I1014 + 2U)) >> I1803) & 3));
                }
                I1014 = I1806;
            };
            *(pcode + 160 + 0U) = 0;
            rmaRemoveNonEdgeLoads(pcode + 160);
        }
    }
    pcode += 200;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate16_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate16(pcode, val);
}
void  rmaPropagate18 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    *(pcode + 1) = X4val[val];
    {
        unsigned long long * I1799 = derivedClk + (4U * X4val[val]);
        memcpy(pcode + 2 + 4, I1799, 25U);
    }
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 32);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        I1141 = X4val[val];
        I1628 = *(pcode + 40);
        *(pcode + 40) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 4560) {
            *(RmaTimeStamp  *)(pcode + 48) = (RmaTimeStamp )vcs_clocks;
        }
    }
    pcode += 56;
    {
        EBLK  * I1400;
        *((*(UB  **)(pcode + 8)) + 1) = X4val[val];
        I1400 = (EBLK  *)(pcode + 0);
        if (I1400->I664 == 0) {
            struct dummyq_struct * pQ;
            U  I1403;
            I1403 = 0;
            pQ = (struct dummyq_struct *)ref_vcs_clocks;
            EBLK  * I1598 = (EBLK  *)pvcsGetLastEventEblk(I1403);
            I1400->I664 = pQ->I1335;
            pQ->I1335 = I1400;
            {
                (pQ->semilerOptQueuesFlag |= (0x1 << 2));
            }
            if (0 && rmaProfEvtProp) {
                vcs_simpSetEBlkEvtID(I1400);
            }
            I1400 = I1598;
            if (!(I1400->I664)) {
                if ((semilerOpt != 0) && (I1598 == I1400)) {
                }
                else {
                    pQ->I1324->I664 = I1400;
                    pQ->I1324 = I1400;
                }
                I1400->I664 = ((EBLK  *)-1);
                if (0 && rmaProfEvtProp) {
                    vcs_simpSetEBlkEvtID(I1400);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        US  I235;
        I1141 = X3val[val];
        I1628 = *(pcode + 40);
        I235 = (I1628 << 2) + I1141;
        I1583 = 1 << I235;
        if (I1583 & 12) {
            (*(FP  *)(pcode + 48))(*(void **)(pcode + 56), I235);
        }
        if (I1583 & 8704) {
            (*(FP  *)(pcode + 64))(*(void **)(pcode + 72), I235);
        }
        if (I1583 & 192) {
            (*(FP  *)(pcode + 80))(*(void **)(pcode + 88), I235);
        }
        if (I1583 & 4352) {
            (*(FP  *)(pcode + 96))(*(void **)(pcode + 104), I235);
        }
        if (I1583 & 18432) {
            (*(FP  *)(pcode + 112))(*(void **)(pcode + 120), I235);
        }
        if (I1583 & 2) {
            (*(FP  *)(pcode + 128))(*(void **)(pcode + 136), I235);
        }
        if (I1583 & 16) {
            (*(FP  *)(pcode + 144))(*(void **)(pcode + 152), I235);
        }
        *(pcode + 40U) = I1141;
    }
    {
        scalar  I1801 = X4val[val];
        scalar  I1802 = *(scalar  *)(pcode + 160 + 2U);
        *(scalar  *)(pcode + 160 + 2U) = I1801;
        UB  * I1014 = *(UB  **)(pcode + 160 + 8U);
        if (I1014) {
            U  I1803 = I1801 * 2;
            U  I1804 = 1 << ((I1802 << 2) + I1801);
            *(pcode + 160 + 0U) = 1;
            while (I1014){
                UB  * I1806 = *(UB  **)(I1014 + 16U);
                if ((*(US  *)(I1014 + 0U)) & I1804) {
                    *(*(UB  **)(I1014 + 48U)) = 1;
                    (*(FP  *)(I1014 + 32U))((void *)(*(RP  *)(I1014 + 40U)), (((*(scalar  *)(I1014 + 2U)) >> I1803) & 3));
                }
                I1014 = I1806;
            };
            *(pcode + 160 + 0U) = 0;
            rmaRemoveNonEdgeLoads(pcode + 160);
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        GateCount  I646;
        I646 = *(U  *)(pcode + 200);
        pcode += 208;
        for (; I646 > 0; I646--) {
            {
                typedef
                US
                 stateType;
                typedef
                US
                 * stateTypePtr;
                pcode1 = *(UB  **)(pcode + 0);
                iinput = (U )(((RP )pcode1) & 7);
                pcode1 = (UB  *)(((RP )pcode1) & ~7);
                {
                    RP  I1504 = 1;
                    if (I1504) {
                        state = *(stateTypePtr )(pcode1 + 16U);
                        state &= ~(3 << (iinput * 2));
                        state |= X4val[val] << (iinput * 2);
                        *(stateTypePtr )(pcode1 + 16U) = state;
                        newval = *((*(UB  **)(pcode1 + 8U)) + state);
                        if (newval != *(pcode1 + 18U)) {
                            *(pcode1 + 18U) = newval;
                            (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                        }
                    }
                }
            }
            pcode += 8;
        }
    }
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate18_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate18(pcode, val);
}
void  rmaPropagate21 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    scalar  I1539;
    scalar  I1540;
    scalar  I1141;
    scalar  I1541;
    scalar  * I1542;
    UB  * I1543;
    U  I1544 = 0;
    U  I1545;
    U  I1546 = 0;
    scalar  I1547;
    US  * I1548;
    US  I1549 = 0;
    UB  * I1103;
    UB  * I1550;
    RP  I1551 = 0;
    I1545 = (U )*(pcode + 24 + 3);
    *(pcode + 24 + 3) = 0;
    I1550 = pcode + 24;
    if (I1545) {
        *I1550 = val;
    }
    else {
        I1540 = *(pcode + 24 + 2);
        I1539 = val;
        if (I1539 != I1540) {
            I1544 = 1;
        }
        if (I1540 == 0xff) {
            I1540 = 0;
            I1546 = 1;
        }
        I1103 = pcode + 24 + 1U;
        *I1103 = I1539;
        if (!I1544) {
            return  ;
        }
        *(pcode + 24 + 2) = I1539;
    }
    if (!I1545) {
        I1542 = *(scalar  **)((*(RP  **)(pcode + 32)));
        I1141 = *(I1542 + I1539);
        *I1550 = I1141;
        val = I1141;
        I1541 = *(I1542 + I1540);
        I1547 = *(I1542 + (28));
        I1543 = (UB  *)(*((*(RP  **)(pcode + 32)) + 1));
        I1548 = edgeActionT + (9 * ((I1540 << 7U) + (I1539 << 2U) + I1547));
        I1549 = I1548[0];
    }
    if (I1544) {
        rmaScheduleGatedClockEdgeLoadNew(pcode + 40, I1548, 1U, I1543, I1543, I1539, I1540);
    }
    {
        scalar  newval;
        U  state;
        U  startBit;
        UB  * pcode1;
        pcode1 = *(UB  **)(pcode + 104);
        {
            RP  I1504 = 1;
            if (I1504 && I1544) {
                startBit = *(U  *)(pcode + 96);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(31U << startBit);
                state |= I1539 << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
        pcode += 112;
        pcode1 = *(UB  **)(pcode + 8);
        {
            RP  I1504 = 1;
            if (I1504 && I1544) {
                startBit = *(U  *)(pcode + 0);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(31U << startBit);
                state |= I1539 << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
    }
    if (!I1545 && !(I1549 & ~33825) && !I1546) {
        return  ;
    }
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 16);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 24);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    pcode += 32;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate21_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 24 + 1U);
    *(pcode + 24 + 1U) = 24;
    rmaPropagate21(pcode, val);
}
void  rmaPropagate23 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        unsigned long long * I1799 = derivedClk + (4U * X4val[val]);
        memcpy(pcode + 1 + 4, I1799, 25U);
    }
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 32);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        I1141 = X4val[val];
        I1628 = *(pcode + 40);
        *(pcode + 40) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 8718) {
            *(RmaTimeStamp  *)(pcode + 48) = (RmaTimeStamp )vcs_clocks;
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        US  I235;
        I1141 = X3val[val];
        I1628 = *(pcode + 56);
        I235 = (I1628 << 2) + I1141;
        I1583 = 1 << I235;
        if (I1583 & 12) {
            (*(FP  *)(pcode + 64))(*(void **)(pcode + 72), I235);
        }
        if (I1583 & 8704) {
            (*(FP  *)(pcode + 80))(*(void **)(pcode + 88), I235);
        }
        if (I1583 & 192) {
            (*(FP  *)(pcode + 96))(*(void **)(pcode + 104), I235);
        }
        if (I1583 & 4352) {
            (*(FP  *)(pcode + 112))(*(void **)(pcode + 120), I235);
        }
        if (I1583 & 18432) {
            (*(FP  *)(pcode + 128))(*(void **)(pcode + 136), I235);
        }
        if (I1583 & 2) {
            (*(FP  *)(pcode + 144))(*(void **)(pcode + 152), I235);
        }
        if (I1583 & 16) {
            (*(FP  *)(pcode + 160))(*(void **)(pcode + 168), I235);
        }
        *(pcode + 56U) = I1141;
    }
    {
        scalar  I1801 = X4val[val];
        scalar  I1802 = *(scalar  *)(pcode + 176 + 2U);
        *(scalar  *)(pcode + 176 + 2U) = I1801;
        UB  * I1014 = *(UB  **)(pcode + 176 + 8U);
        if (I1014) {
            U  I1803 = I1801 * 2;
            U  I1804 = 1 << ((I1802 << 2) + I1801);
            *(pcode + 176 + 0U) = 1;
            while (I1014){
                UB  * I1806 = *(UB  **)(I1014 + 16U);
                if ((*(US  *)(I1014 + 0U)) & I1804) {
                    *(*(UB  **)(I1014 + 48U)) = 1;
                    (*(FP  *)(I1014 + 32U))((void *)(*(RP  *)(I1014 + 40U)), (((*(scalar  *)(I1014 + 2U)) >> I1803) & 3));
                }
                I1014 = I1806;
            };
            *(pcode + 176 + 0U) = 0;
            rmaRemoveNonEdgeLoads(pcode + 176);
        }
    }
    pcode += 216;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate23_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate23(pcode, val);
}
void  rmaPropagate25 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        unsigned long long * I1799 = derivedClk + (4U * X4val[val]);
        memcpy(pcode + 1 + 4, I1799, 25U);
    }
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 32);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        I1141 = X4val[val];
        I1628 = *(pcode + 40);
        *(pcode + 40) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 8718) {
            *(RmaTimeStamp  *)(pcode + 48) = (RmaTimeStamp )vcs_clocks;
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        US  I235;
        I1141 = X3val[val];
        I1628 = *(pcode + 56);
        I235 = (I1628 << 2) + I1141;
        I1583 = 1 << I235;
        if (I1583 & 12) {
            (*(FP  *)(pcode + 64))(*(void **)(pcode + 72), I235);
        }
        if (I1583 & 8704) {
            (*(FP  *)(pcode + 80))(*(void **)(pcode + 88), I235);
        }
        if (I1583 & 192) {
            (*(FP  *)(pcode + 96))(*(void **)(pcode + 104), I235);
        }
        if (I1583 & 4352) {
            (*(FP  *)(pcode + 112))(*(void **)(pcode + 120), I235);
        }
        if (I1583 & 18432) {
            (*(FP  *)(pcode + 128))(*(void **)(pcode + 136), I235);
        }
        if (I1583 & 2) {
            (*(FP  *)(pcode + 144))(*(void **)(pcode + 152), I235);
        }
        if (I1583 & 16) {
            (*(FP  *)(pcode + 160))(*(void **)(pcode + 168), I235);
        }
        *(pcode + 56U) = I1141;
    }
    {
        scalar  I1801 = X4val[val];
        scalar  I1802 = *(scalar  *)(pcode + 176 + 2U);
        *(scalar  *)(pcode + 176 + 2U) = I1801;
        UB  * I1014 = *(UB  **)(pcode + 176 + 8U);
        if (I1014) {
            U  I1803 = I1801 * 2;
            U  I1804 = 1 << ((I1802 << 2) + I1801);
            *(pcode + 176 + 0U) = 1;
            while (I1014){
                UB  * I1806 = *(UB  **)(I1014 + 16U);
                if ((*(US  *)(I1014 + 0U)) & I1804) {
                    *(*(UB  **)(I1014 + 48U)) = 1;
                    (*(FP  *)(I1014 + 32U))((void *)(*(RP  *)(I1014 + 40U)), (((*(scalar  *)(I1014 + 2U)) >> I1803) & 3));
                }
                I1014 = I1806;
            };
            *(pcode + 176 + 0U) = 0;
            rmaRemoveNonEdgeLoads(pcode + 176);
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        GateCount  I646;
        I646 = *(U  *)(pcode + 216);
        pcode += 224;
        for (; I646 > 0; I646--) {
            {
                typedef
                US
                 stateType;
                typedef
                US
                 * stateTypePtr;
                pcode1 = *(UB  **)(pcode + 0);
                iinput = (U )(((RP )pcode1) & 7);
                pcode1 = (UB  *)(((RP )pcode1) & ~7);
                {
                    RP  I1504 = 1;
                    if (I1504) {
                        state = *(stateTypePtr )(pcode1 + 16U);
                        state &= ~(3 << (iinput * 2));
                        state |= X4val[val] << (iinput * 2);
                        *(stateTypePtr )(pcode1 + 16U) = state;
                        newval = *((*(UB  **)(pcode1 + 8U)) + state);
                        if (newval != *(pcode1 + 18U)) {
                            *(pcode1 + 18U) = newval;
                            (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                        }
                    }
                }
            }
            pcode += 8;
        }
    }
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate25_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate25(pcode, val);
}
void  rmaPropagate26 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    scalar  I1539;
    scalar  I1540;
    scalar  I1141;
    scalar  I1541;
    scalar  * I1542;
    UB  * I1543;
    U  I1544 = 0;
    U  I1545;
    U  I1546 = 0;
    scalar  I1547;
    US  * I1548;
    US  I1549 = 0;
    UB  * I1103;
    UB  * I1550;
    RP  I1551 = 0;
    I1545 = (U )*(pcode + 24 + 3);
    *(pcode + 24 + 3) = 0;
    I1550 = pcode + 24;
    if (I1545) {
        *I1550 = val;
    }
    else {
        I1540 = *(pcode + 24 + 2);
        I1539 = val;
        if (I1539 != I1540) {
            I1544 = 1;
        }
        if (I1540 == 0xff) {
            I1540 = 0;
            I1546 = 1;
        }
        I1103 = pcode + 24 + 1U;
        *I1103 = I1539;
        if (!I1544) {
            return  ;
        }
        *(pcode + 24 + 2) = I1539;
    }
    if (!I1545) {
        I1542 = *(scalar  **)((*(RP  **)(pcode + 32)));
        I1141 = *(I1542 + I1539);
        *I1550 = I1141;
        val = I1141;
        I1541 = *(I1542 + I1540);
        I1547 = *(I1542 + (28));
        I1543 = (UB  *)(*((*(RP  **)(pcode + 32)) + 1));
        I1548 = edgeActionT + (9 * ((I1540 << 7U) + (I1539 << 2U) + I1547));
        I1549 = I1548[0];
    }
    if (I1544) {
        rmaScheduleGatedClockEdgeLoadNew(pcode + 40, I1548, 1U, I1543, I1543, I1539, I1540);
    }
    {
        scalar  newval;
        U  state;
        U  startBit;
        UB  * pcode1;
        pcode1 = *(UB  **)(pcode + 104);
        {
            RP  I1504 = 1;
            if (I1504 && I1544) {
                startBit = *(U  *)(pcode + 96);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(31U << startBit);
                state |= I1539 << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
        pcode += 112;
        pcode1 = *(UB  **)(pcode + 8);
        {
            RP  I1504 = 1;
            if (I1504 && I1544) {
                startBit = *(U  *)(pcode + 0);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(31U << startBit);
                state |= I1539 << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
    }
    if (!I1545 && !(I1549 & ~33825) && !I1546) {
        return  ;
    }
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 16);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        GateCount  I646;
        I646 = *(U  *)(pcode + 24);
        pcode += 32;
        for (; I646 > 0; I646--) {
            {
                typedef
                US
                 stateType;
                typedef
                US
                 * stateTypePtr;
                pcode1 = *(UB  **)(pcode + 0);
                iinput = (U )(((RP )pcode1) & 7);
                pcode1 = (UB  *)(((RP )pcode1) & ~7);
                {
                    RP  I1504 = 1;
                    if (I1504) {
                        state = *(stateTypePtr )(pcode1 + 16U);
                        state &= ~(3 << (iinput * 2));
                        state |= X4val[val] << (iinput * 2);
                        *(stateTypePtr )(pcode1 + 16U) = state;
                        newval = *((*(UB  **)(pcode1 + 8U)) + state);
                        if (newval != *(pcode1 + 18U)) {
                            *(pcode1 + 18U) = newval;
                            (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                        }
                    }
                }
            }
            pcode += 8;
        }
    }
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate26_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 24 + 1U);
    *(pcode + 24 + 1U) = 24;
    rmaPropagate26(pcode, val);
}
void  rmaPropagate27 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    scalar  I1539;
    scalar  I1540;
    scalar  I1141;
    scalar  I1541;
    scalar  * I1542;
    UB  * I1543;
    U  I1544 = 0;
    U  I1545;
    U  I1546 = 0;
    scalar  I1547;
    US  * I1548;
    US  I1549 = 0;
    UB  * I1103;
    UB  * I1550;
    RP  I1551 = 0;
    I1545 = (U )*(pcode + 24 + 3);
    *(pcode + 24 + 3) = 0;
    I1550 = pcode + 24;
    if (I1545) {
        *I1550 = val;
    }
    else {
        I1540 = *(pcode + 24 + 2);
        I1539 = val;
        if (I1539 != I1540) {
            I1544 = 1;
        }
        if (I1540 == 0xff) {
            I1540 = 0;
            I1546 = 1;
        }
        I1103 = pcode + 24 + 1U;
        *I1103 = I1539;
        if (!I1544) {
            return  ;
        }
        *(pcode + 24 + 2) = I1539;
    }
    if (!I1545) {
        I1542 = *(scalar  **)((*(RP  **)(pcode + 32)));
        I1141 = *(I1542 + I1539);
        *I1550 = I1141;
        val = I1141;
        I1541 = *(I1542 + I1540);
        I1547 = *(I1542 + (28));
        I1543 = (UB  *)(*((*(RP  **)(pcode + 32)) + 1));
        I1548 = edgeActionT + (9 * ((I1540 << 7U) + (I1539 << 2U) + I1547));
        I1549 = I1548[0];
    }
    if (I1544) {
        rmaScheduleGatedClockEdgeLoadNew(pcode + 40, I1548, 1U, I1543, I1543, I1539, I1540);
    }
    {
        scalar  newval;
        U  state;
        U  startBit;
        UB  * pcode1;
        pcode1 = *(UB  **)(pcode + 104);
        {
            RP  I1504 = 1;
            if (I1504 && I1544) {
                startBit = *(U  *)(pcode + 96);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(31U << startBit);
                state |= I1539 << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
        pcode += 112;
        pcode1 = *(UB  **)(pcode + 8);
        {
            RP  I1504 = 1;
            if (I1504 && I1544) {
                startBit = *(U  *)(pcode + 0);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(31U << startBit);
                state |= I1539 << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
    }
    if (!I1545 && !(I1549 & ~33825) && !I1546) {
        return  ;
    }
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 16);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 24);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 32);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 40);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    pcode += 48;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate27_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 24 + 1U);
    *(pcode + 24 + 1U) = 24;
    rmaPropagate27(pcode, val);
}
void  rmaPropagate159 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    *(pcode + 1) = X4val[val];
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        I1141 = X4val[val];
        I1628 = *(pcode + 16);
        *(pcode + 16) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 8718) {
            *(RmaTimeStamp  *)(pcode + 24) = (RmaTimeStamp )vcs_clocks;
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        US  I235;
        I1141 = X3val[val];
        I1628 = *(pcode + 32);
        I235 = (I1628 << 2) + I1141;
        I1583 = 1 << I235;
        if (I1583 & 18) {
            if (I1583 & 2) {
                (*(FP  *)(pcode + 40))(*(void **)(pcode + 48), I235);
            }
        }
        else {
            U  I1487;
            U  I648;
            U  I1663;
            U  * I1665;
            UB  * pcode1;
            pcode1 = (UB  *)(*(UP  *)(pcode + 48) & ~3);
            I648 = *(U  *)pcode1;
            I1665 = (U  *)(pcode1 + sizeof(U ));
            I1663 = (I648 + 31) >> 5;
            pcode1 += sizeof(U ) * (1 + I1663);
            for (I1487 = 0; I1487 < I1663; I1487++) {
                if (I1487 == I1663 - 1 && (I648 % 32)) {
                    I1665[I1487] = (1 << (I648 % 32)) - 1;
                }
                else {
                    I1665[I1487] = (U )-1;
                }
            }
            pcode1 = (UB  *)((((RP )pcode1) + 7) & (~7));
            for (; I648 > 0; I648--) {
                (*(FP  *)(pcode1))(*(void **)(pcode1 + 8LU), I235);
                pcode1 += 16;
            }
        }
        *(pcode + 32U) = I1141;
    }
    pcode += 56;
    {
        EBLK  * I1400;
        *((*(UB  **)(pcode + 8)) + 1) = X4val[val];
        I1400 = (EBLK  *)(pcode + 0);
        if (I1400->I664 == 0) {
            struct dummyq_struct * pQ;
            U  I1403;
            I1403 = 0;
            pQ = (struct dummyq_struct *)ref_vcs_clocks;
            EBLK  * I1598 = (EBLK  *)pvcsGetLastEventEblk(I1403);
            I1400->I664 = pQ->I1335;
            pQ->I1335 = I1400;
            {
                (pQ->semilerOptQueuesFlag |= (0x1 << 2));
            }
            if (0 && rmaProfEvtProp) {
                vcs_simpSetEBlkEvtID(I1400);
            }
            I1400 = I1598;
            if (!(I1400->I664)) {
                if ((semilerOpt != 0) && (I1598 == I1400)) {
                }
                else {
                    pQ->I1324->I664 = I1400;
                    pQ->I1324 = I1400;
                }
                I1400->I664 = ((EBLK  *)-1);
                if (0 && rmaProfEvtProp) {
                    vcs_simpSetEBlkEvtID(I1400);
                }
            }
        }
    }
    pcode += 40;
    *((*(UB  **)(pcode + 8U)) + 1) = X4val[val];
    {
        EBLK  * I1400;
        I1400 = (EBLK  *)(pcode + 0);
        EBLK  * I1598;
        struct dummyq_struct * pQ;
        U  I1403;
        I1403 = 0;
        pQ = (struct dummyq_struct *)ref_vcs_clocks;
        I1598 = (EBLK  *)pvcsGetLastEventEblk(I1403);
        if (I1400->I664 == 0) {
            I1400->I664 = pQ->I1334;
            pQ->I1334 = I1400;
            {
                (pQ->semilerOptQueuesFlag |= (0x1 << 2));
            }
            I1400 = I1598;
            if (!(I1400->I664)) {
                if ((semilerOpt != 0) && (I1598 == I1400)) {
                }
                else {
                    pQ->I1324->I664 = I1400;
                    pQ->I1324 = I1400;
                }
                I1400->I664 = ((EBLK  *)-1);
                if (0 && rmaProfEvtProp) {
                    vcs_simpSetEBlkEvtID(I1400);
                }
            }
        }
    }
    {
        (*(FP  *)(pcode + 48))(*(UB  **)(pcode + 56), globalTable1Input[(*(U  *)(pcode + 40) >> 8) + val]);
    }
    pcode += 64;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate159_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate159(pcode, val);
}
void  rmaPropagate161 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    *(pcode + 1) = X4val[val];
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        U  I1635;
        U  I1636;
        EBLK  * I1400;
        struct dummyq_struct * pQ;
        U  I1403;
        I1403 = 0;
        pQ = (struct dummyq_struct *)ref_vcs_clocks;
        I1141 = X4val[val];
        I1628 = *(pcode + 16);
        *(pcode + 16) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 4560) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 24), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 24));
            }
        }
        if (I1583 & 8718) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 64), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 64));
            }
        }
    }
    pcode += 104;
    {
        EBLK  * I1400;
        *((*(UB  **)(pcode + 8)) + 1) = X4val[val];
        I1400 = (EBLK  *)(pcode + 0);
        if (I1400->I664 == 0) {
            struct dummyq_struct * pQ;
            U  I1403;
            I1403 = 0;
            pQ = (struct dummyq_struct *)ref_vcs_clocks;
            EBLK  * I1598 = (EBLK  *)pvcsGetLastEventEblk(I1403);
            I1400->I664 = pQ->I1335;
            pQ->I1335 = I1400;
            {
                (pQ->semilerOptQueuesFlag |= (0x1 << 2));
            }
            if (0 && rmaProfEvtProp) {
                vcs_simpSetEBlkEvtID(I1400);
            }
            I1400 = I1598;
            if (!(I1400->I664)) {
                if ((semilerOpt != 0) && (I1598 == I1400)) {
                }
                else {
                    pQ->I1324->I664 = I1400;
                    pQ->I1324 = I1400;
                }
                I1400->I664 = ((EBLK  *)-1);
                if (0 && rmaProfEvtProp) {
                    vcs_simpSetEBlkEvtID(I1400);
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 40);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 48);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 56))(*(UB  **)(pcode + 64), I1413);
    }
    pcode += 72;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate161_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate161(pcode, val);
}
void  rmaPropagate162 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    if (*(pcode + 0) == val) {
        return  ;
    }
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 16);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 24);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 32);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 40))(*(UB  **)(pcode + 48), I1413);
    }
    pcode += 56;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate163 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        {
            RP  I1504 = 1;
            if (I1504) {
                (*(FP  *)(pcode + 24U))(*(UB  **)(pcode + 32U), *((*(UB  **)(pcode + 16U)) + X4val[val]));
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 40);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 48);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 56);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 64))(*(UB  **)(pcode + 72), I1413);
    }
    pcode += 80;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate163_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate163(pcode, val);
}
void  rmaPropagate168 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    *(pcode + 1) = X4val[val];
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        I1141 = X4val[val];
        I1628 = *(pcode + 16);
        *(pcode + 16) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 8718) {
            *(RmaTimeStamp  *)(pcode + 24) = (RmaTimeStamp )vcs_clocks;
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        US  I235;
        I1141 = X3val[val];
        I1628 = *(pcode + 32);
        I235 = (I1628 << 2) + I1141;
        I1583 = 1 << I235;
        if (I1583 & 18) {
            if (I1583 & 2) {
                (*(FP  *)(pcode + 40))(*(void **)(pcode + 48), I235);
            }
        }
        else {
            U  I1487;
            U  I648;
            U  I1663;
            U  * I1665;
            UB  * pcode1;
            pcode1 = (UB  *)(*(UP  *)(pcode + 48) & ~3);
            I648 = *(U  *)pcode1;
            I1665 = (U  *)(pcode1 + sizeof(U ));
            I1663 = (I648 + 31) >> 5;
            pcode1 += sizeof(U ) * (1 + I1663);
            for (I1487 = 0; I1487 < I1663; I1487++) {
                if (I1487 == I1663 - 1 && (I648 % 32)) {
                    I1665[I1487] = (1 << (I648 % 32)) - 1;
                }
                else {
                    I1665[I1487] = (U )-1;
                }
            }
            pcode1 = (UB  *)((((RP )pcode1) + 7) & (~7));
            for (; I648 > 0; I648--) {
                (*(FP  *)(pcode1))(*(void **)(pcode1 + 8LU), I235);
                pcode1 += 16;
            }
        }
        *(pcode + 32U) = I1141;
    }
    pcode += 56;
    {
        EBLK  * I1400;
        *((*(UB  **)(pcode + 8)) + 1) = X4val[val];
        I1400 = (EBLK  *)(pcode + 0);
        if (I1400->I664 == 0) {
            struct dummyq_struct * pQ;
            U  I1403;
            I1403 = 0;
            pQ = (struct dummyq_struct *)ref_vcs_clocks;
            EBLK  * I1598 = (EBLK  *)pvcsGetLastEventEblk(I1403);
            I1400->I664 = pQ->I1335;
            pQ->I1335 = I1400;
            {
                (pQ->semilerOptQueuesFlag |= (0x1 << 2));
            }
            if (0 && rmaProfEvtProp) {
                vcs_simpSetEBlkEvtID(I1400);
            }
            I1400 = I1598;
            if (!(I1400->I664)) {
                if ((semilerOpt != 0) && (I1598 == I1400)) {
                }
                else {
                    pQ->I1324->I664 = I1400;
                    pQ->I1324 = I1400;
                }
                I1400->I664 = ((EBLK  *)-1);
                if (0 && rmaProfEvtProp) {
                    vcs_simpSetEBlkEvtID(I1400);
                }
            }
        }
    }
    {
        (*(FP  *)(pcode + 48))(*(UB  **)(pcode + 56), globalTable1Input[(*(U  *)(pcode + 40) >> 8) + val]);
    }
    pcode += 64;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate168_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate168(pcode, val);
}
void  rmaPropagate169 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    if (*(pcode + 0) == val) {
        return  ;
    }
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 16);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 24))(*(UB  **)(pcode + 32), I1413);
    }
    pcode += 40;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate170 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        {
            RP  I1504 = 1;
            if (I1504) {
                (*(FP  *)(pcode + 24U))(*(UB  **)(pcode + 32U), *((*(UB  **)(pcode + 16U)) + X4val[val]));
            }
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 40);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 48))(*(UB  **)(pcode + 56), I1413);
    }
    pcode += 64;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate170_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate170(pcode, val);
}
void  rmaPropagate176 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        I1141 = X4val[val];
        I1628 = *(pcode + 16);
        *(pcode + 16) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 8718) {
            *(RmaTimeStamp  *)(pcode + 24) = (RmaTimeStamp )vcs_clocks;
        }
    }
    {
        (*(FP  *)(pcode + 40))(*(UB  **)(pcode + 48), globalTable1Input[(*(U  *)(pcode + 32) >> 8) + val]);
    }
    {
        (*(FP  *)(pcode + 64))(*(UB  **)(pcode + 72), globalTable1Input[(*(U  *)(pcode + 56) >> 8) + val]);
    }
    pcode += 80;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate176_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate176(pcode, val);
}
void  rmaPropagate178 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    *(pcode + 1) = X4val[val];
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        US  I235;
        I1141 = X3val[val];
        I1628 = *(pcode + 16);
        I235 = (I1628 << 2) + I1141;
        I1583 = 1 << I235;
        if (I1583 & 18) {
            if (I1583 & 16) {
                (*(FP  *)(pcode + 24))(*(void **)(pcode + 32), I235);
            }
        }
        else {
            U  I1487;
            U  I648;
            U  I1663;
            U  * I1665;
            UB  * pcode1;
            pcode1 = (UB  *)(*(UP  *)(pcode + 32) & ~3);
            I648 = *(U  *)pcode1;
            I1665 = (U  *)(pcode1 + sizeof(U ));
            I1663 = (I648 + 31) >> 5;
            pcode1 += sizeof(U ) * (1 + I1663);
            for (I1487 = 0; I1487 < I1663; I1487++) {
                if (I1487 == I1663 - 1 && (I648 % 32)) {
                    I1665[I1487] = (1 << (I648 % 32)) - 1;
                }
                else {
                    I1665[I1487] = (U )-1;
                }
            }
            pcode1 = (UB  *)((((RP )pcode1) + 7) & (~7));
            for (; I648 > 0; I648--) {
                (*(FP  *)(pcode1))(*(void **)(pcode1 + 8LU), I235);
                pcode1 += 16;
            }
        }
        *(pcode + 16U) = I1141;
    }
    {
        (*(FP  *)(pcode + 48))(*(UB  **)(pcode + 56), globalTable1Input[(*(U  *)(pcode + 40) >> 8) + val]);
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 64);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 72);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    pcode += 80;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate178_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate178(pcode, val);
}
void  rmaPropagate184 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        {
            RP  I1504 = 1;
            if (I1504) {
                (*(FP  *)(pcode + 24U))(*(UB  **)(pcode + 32U), *((*(UB  **)(pcode + 16U)) + X4val[val]));
            }
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 40);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 48);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 56))(*(UB  **)(pcode + 64), I1413);
    }
    pcode += 72;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate184_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate184(pcode, val);
}
void  rmaPropagate187 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    if (*(pcode + 0) == val) {
        return  ;
    }
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 16);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 24);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    pcode += 32;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate190 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    *(pcode + 1) = X4val[val];
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        US  I235;
        I1141 = X3val[val];
        I1628 = *(pcode + 16);
        I235 = (I1628 << 2) + I1141;
        I1583 = 1 << I235;
        if (I1583 & 18) {
            if (I1583 & 16) {
                (*(FP  *)(pcode + 24))(*(void **)(pcode + 32), I235);
            }
        }
        else {
            U  I1487;
            U  I648;
            U  I1663;
            U  * I1665;
            UB  * pcode1;
            pcode1 = (UB  *)(*(UP  *)(pcode + 32) & ~3);
            I648 = *(U  *)pcode1;
            I1665 = (U  *)(pcode1 + sizeof(U ));
            I1663 = (I648 + 31) >> 5;
            pcode1 += sizeof(U ) * (1 + I1663);
            for (I1487 = 0; I1487 < I1663; I1487++) {
                if (I1487 == I1663 - 1 && (I648 % 32)) {
                    I1665[I1487] = (1 << (I648 % 32)) - 1;
                }
                else {
                    I1665[I1487] = (U )-1;
                }
            }
            pcode1 = (UB  *)((((RP )pcode1) + 7) & (~7));
            for (; I648 > 0; I648--) {
                (*(FP  *)(pcode1))(*(void **)(pcode1 + 8LU), I235);
                pcode1 += 16;
            }
        }
        *(pcode + 16U) = I1141;
    }
    {
        (*(FP  *)(pcode + 48))(*(UB  **)(pcode + 56), globalTable1Input[(*(U  *)(pcode + 40) >> 8) + val]);
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        GateCount  I646;
        I646 = *(U  *)(pcode + 64);
        pcode += 72;
        for (; I646 > 0; I646--) {
            {
                typedef
                US
                 stateType;
                typedef
                US
                 * stateTypePtr;
                pcode1 = *(UB  **)(pcode + 0);
                iinput = (U )(((RP )pcode1) & 7);
                pcode1 = (UB  *)(((RP )pcode1) & ~7);
                {
                    RP  I1504 = 1;
                    if (I1504) {
                        state = *(stateTypePtr )(pcode1 + 16U);
                        state &= ~(3 << (iinput * 2));
                        state |= X4val[val] << (iinput * 2);
                        *(stateTypePtr )(pcode1 + 16U) = state;
                        newval = *((*(UB  **)(pcode1 + 8U)) + state);
                        if (newval != *(pcode1 + 18U)) {
                            *(pcode1 + 18U) = newval;
                            (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                        }
                    }
                }
            }
            pcode += 8;
        }
    }
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate190_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate190(pcode, val);
}
void  rmaPropagate192 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        {
            RP  I1504 = 1;
            if (I1504) {
                (*(FP  *)(pcode + 24U))(*(UB  **)(pcode + 32U), *((*(UB  **)(pcode + 16U)) + X4val[val]));
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 40);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 48);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 56))(*(UB  **)(pcode + 64), I1413);
    }
    pcode += 72;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate192_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate192(pcode, val);
}
void  rmaPropagate193 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    if (*(pcode + 0) == val) {
        return  ;
    }
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 16);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 24);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    pcode += 32;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate195 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        I1141 = X4val[val];
        I1628 = *(pcode + 16);
        *(pcode + 16) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 4560) {
            *(RmaTimeStamp  *)(pcode + 24) = (RmaTimeStamp )vcs_clocks;
        }
    }
    {
        (*(FP  *)(pcode + 40))(*(UB  **)(pcode + 48), globalTable1Input[(*(U  *)(pcode + 32) >> 8) + val]);
    }
    {
        (*(FP  *)(pcode + 64))(*(UB  **)(pcode + 72), globalTable1Input[(*(U  *)(pcode + 56) >> 8) + val]);
    }
    pcode += 80;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate195_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate195(pcode, val);
}
void  rmaPropagate197 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    *(pcode + 1) = X4val[val];
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        US  I235;
        I1141 = X3val[val];
        I1628 = *(pcode + 16);
        I235 = (I1628 << 2) + I1141;
        I1583 = 1 << I235;
        if (I1583 & 18) {
            if (I1583 & 16) {
                (*(FP  *)(pcode + 24))(*(void **)(pcode + 32), I235);
            }
        }
        else {
            U  I1487;
            U  I648;
            U  I1663;
            U  * I1665;
            UB  * pcode1;
            pcode1 = (UB  *)(*(UP  *)(pcode + 32) & ~3);
            I648 = *(U  *)pcode1;
            I1665 = (U  *)(pcode1 + sizeof(U ));
            I1663 = (I648 + 31) >> 5;
            pcode1 += sizeof(U ) * (1 + I1663);
            for (I1487 = 0; I1487 < I1663; I1487++) {
                if (I1487 == I1663 - 1 && (I648 % 32)) {
                    I1665[I1487] = (1 << (I648 % 32)) - 1;
                }
                else {
                    I1665[I1487] = (U )-1;
                }
            }
            pcode1 = (UB  *)((((RP )pcode1) + 7) & (~7));
            for (; I648 > 0; I648--) {
                (*(FP  *)(pcode1))(*(void **)(pcode1 + 8LU), I235);
                pcode1 += 16;
            }
        }
        *(pcode + 16U) = I1141;
    }
    {
        (*(FP  *)(pcode + 48))(*(UB  **)(pcode + 56), globalTable1Input[(*(U  *)(pcode + 40) >> 8) + val]);
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 64);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 72);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 80);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    pcode += 88;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate197_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate197(pcode, val);
}
void  rmaPropagate198 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    if (*(pcode + 0) == val) {
        return  ;
    }
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 16);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 24);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 32))(*(UB  **)(pcode + 40), I1413);
    }
    pcode += 48;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate199 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        {
            RP  I1504 = 1;
            if (I1504) {
                (*(FP  *)(pcode + 24U))(*(UB  **)(pcode + 32U), *((*(UB  **)(pcode + 16U)) + X4val[val]));
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 40);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 48))(*(UB  **)(pcode + 56), I1413);
    }
    pcode += 64;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate199_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate199(pcode, val);
}
void  rmaPropagate203 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    *(pcode + 1) = X4val[val];
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        (*(FP  *)(pcode + 24))(*(UB  **)(pcode + 32), globalTable1Input[(*(U  *)(pcode + 16) >> 8) + val]);
    }
    {
        (*(FP  *)(pcode + 48))(*(UB  **)(pcode + 56), globalTable1Input[(*(U  *)(pcode + 40) >> 8) + val]);
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 64))(*(UB  **)(pcode + 72), I1413);
    }
    pcode += 80;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate203_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate203(pcode, val);
}
void  rmaPropagate205 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    *(pcode + 1) = X4val[val];
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        US  I235;
        I1141 = X3val[val];
        I1628 = *(pcode + 16);
        I235 = (I1628 << 2) + I1141;
        I1583 = 1 << I235;
        if (I1583 & 18) {
            if (I1583 & 16) {
                (*(FP  *)(pcode + 24))(*(void **)(pcode + 32), I235);
            }
        }
        else {
            U  I1487;
            U  I648;
            U  I1663;
            U  * I1665;
            UB  * pcode1;
            pcode1 = (UB  *)(*(UP  *)(pcode + 32) & ~3);
            I648 = *(U  *)pcode1;
            I1665 = (U  *)(pcode1 + sizeof(U ));
            I1663 = (I648 + 31) >> 5;
            pcode1 += sizeof(U ) * (1 + I1663);
            for (I1487 = 0; I1487 < I1663; I1487++) {
                if (I1487 == I1663 - 1 && (I648 % 32)) {
                    I1665[I1487] = (1 << (I648 % 32)) - 1;
                }
                else {
                    I1665[I1487] = (U )-1;
                }
            }
            pcode1 = (UB  *)((((RP )pcode1) + 7) & (~7));
            for (; I648 > 0; I648--) {
                (*(FP  *)(pcode1))(*(void **)(pcode1 + 8LU), I235);
                pcode1 += 16;
            }
        }
        *(pcode + 16U) = I1141;
    }
    {
        (*(FP  *)(pcode + 48))(*(UB  **)(pcode + 56), globalTable1Input[(*(U  *)(pcode + 40) >> 8) + val]);
    }
    {
        (*(FP  *)(pcode + 72))(*(UB  **)(pcode + 80), globalTable1Input[(*(U  *)(pcode + 64) >> 8) + val]);
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 88);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 96);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 104))(*(UB  **)(pcode + 112), I1413);
    }
    pcode += 120;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate205_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate205(pcode, val);
}
void  rmaPropagate207 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    if (*(pcode + 0) == val) {
        return  ;
    }
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 16);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    pcode += 24;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate211 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    *(pcode + 1) = X4val[val];
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    pcode += 16;
    {
        EBLK  * I1400;
        *((*(UB  **)(pcode + 8)) + 1) = X4val[val];
        I1400 = (EBLK  *)(pcode + 0);
        if (I1400->I664 == 0) {
            struct dummyq_struct * pQ;
            U  I1403;
            I1403 = 0;
            pQ = (struct dummyq_struct *)ref_vcs_clocks;
            EBLK  * I1598 = (EBLK  *)pvcsGetLastEventEblk(I1403);
            I1400->I664 = pQ->I1335;
            pQ->I1335 = I1400;
            {
                (pQ->semilerOptQueuesFlag |= (0x1 << 2));
            }
            if (0 && rmaProfEvtProp) {
                vcs_simpSetEBlkEvtID(I1400);
            }
            I1400 = I1598;
            if (!(I1400->I664)) {
                if ((semilerOpt != 0) && (I1598 == I1400)) {
                }
                else {
                    pQ->I1324->I664 = I1400;
                    pQ->I1324 = I1400;
                }
                I1400->I664 = ((EBLK  *)-1);
                if (0 && rmaProfEvtProp) {
                    vcs_simpSetEBlkEvtID(I1400);
                }
            }
        }
    }
    {
        (*(FP  *)(pcode + 48))(*(UB  **)(pcode + 56), globalTable1Input[(*(U  *)(pcode + 40) >> 8) + val]);
    }
    {
        (*(FP  *)(pcode + 72))(*(UB  **)(pcode + 80), globalTable1Input[(*(U  *)(pcode + 64) >> 8) + val]);
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 88))(*(UB  **)(pcode + 96), I1413);
    }
    pcode += 104;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate211_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate211(pcode, val);
}
void  rmaPropagate213 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    pcode += 16;
    {
        EBLK  * I1400;
        *((*(UB  **)(pcode + 8)) + 1) = X4val[val];
        I1400 = (EBLK  *)(pcode + 0);
        if (I1400->I664 == 0) {
            struct dummyq_struct * pQ;
            U  I1403;
            I1403 = 0;
            pQ = (struct dummyq_struct *)ref_vcs_clocks;
            EBLK  * I1598 = (EBLK  *)pvcsGetLastEventEblk(I1403);
            I1400->I664 = pQ->I1335;
            pQ->I1335 = I1400;
            {
                (pQ->semilerOptQueuesFlag |= (0x1 << 2));
            }
            if (0 && rmaProfEvtProp) {
                vcs_simpSetEBlkEvtID(I1400);
            }
            I1400 = I1598;
            if (!(I1400->I664)) {
                if ((semilerOpt != 0) && (I1598 == I1400)) {
                }
                else {
                    pQ->I1324->I664 = I1400;
                    pQ->I1324 = I1400;
                }
                I1400->I664 = ((EBLK  *)-1);
                if (0 && rmaProfEvtProp) {
                    vcs_simpSetEBlkEvtID(I1400);
                }
            }
        }
    }
    {
        (*(FP  *)(pcode + 48))(*(UB  **)(pcode + 56), globalTable1Input[(*(U  *)(pcode + 40) >> 8) + val]);
    }
    {
        (*(FP  *)(pcode + 72))(*(UB  **)(pcode + 80), globalTable1Input[(*(U  *)(pcode + 64) >> 8) + val]);
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 88))(*(UB  **)(pcode + 96), I1413);
    }
    pcode += 104;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate213_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate213(pcode, val);
}
void  rmaPropagate215 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    *(pcode + 1) = X4val[val];
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        US  I235;
        I1141 = X3val[val];
        I1628 = *(pcode + 16);
        I235 = (I1628 << 2) + I1141;
        I1583 = 1 << I235;
        if (I1583 & 18) {
            if (I1583 & 16) {
                (*(FP  *)(pcode + 24))(*(void **)(pcode + 32), I235);
            }
        }
        else {
            U  I1487;
            U  I648;
            U  I1663;
            U  * I1665;
            UB  * pcode1;
            pcode1 = (UB  *)(*(UP  *)(pcode + 32) & ~3);
            I648 = *(U  *)pcode1;
            I1665 = (U  *)(pcode1 + sizeof(U ));
            I1663 = (I648 + 31) >> 5;
            pcode1 += sizeof(U ) * (1 + I1663);
            for (I1487 = 0; I1487 < I1663; I1487++) {
                if (I1487 == I1663 - 1 && (I648 % 32)) {
                    I1665[I1487] = (1 << (I648 % 32)) - 1;
                }
                else {
                    I1665[I1487] = (U )-1;
                }
            }
            pcode1 = (UB  *)((((RP )pcode1) + 7) & (~7));
            for (; I648 > 0; I648--) {
                (*(FP  *)(pcode1))(*(void **)(pcode1 + 8LU), I235);
                pcode1 += 16;
            }
        }
        *(pcode + 16U) = I1141;
    }
    {
        (*(FP  *)(pcode + 48))(*(UB  **)(pcode + 56), globalTable1Input[(*(U  *)(pcode + 40) >> 8) + val]);
    }
    {
        (*(FP  *)(pcode + 72))(*(UB  **)(pcode + 80), globalTable1Input[(*(U  *)(pcode + 64) >> 8) + val]);
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 88);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 96);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 104);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        pcode += 112;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 0);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 8))(*(UB  **)(pcode + 16), I1413);
    }
    pcode += 24;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate215_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate215(pcode, val);
}
void  rmaPropagate218 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        U  I1635;
        U  I1636;
        EBLK  * I1400;
        struct dummyq_struct * pQ;
        U  I1403;
        I1403 = 0;
        pQ = (struct dummyq_struct *)ref_vcs_clocks;
        I1141 = X4val[val];
        I1628 = *(pcode + 16);
        *(pcode + 16) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 4560) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 24), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 24));
            }
        }
        if (I1583 & 8718) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 64), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 64));
            }
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 104);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        pcode += 112;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 0);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 8))(*(UB  **)(pcode + 16), I1413);
    }
    pcode += 24;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate218_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate218(pcode, val);
}
void  rmaPropagate220 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        U  I1635;
        U  I1636;
        EBLK  * I1400;
        struct dummyq_struct * pQ;
        U  I1403;
        I1403 = 0;
        pQ = (struct dummyq_struct *)ref_vcs_clocks;
        I1141 = X4val[val];
        I1628 = *(pcode + 16);
        *(pcode + 16) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 4560) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 24), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 24));
            }
        }
        if (I1583 & 8718) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 64), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 64));
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 104))(*(UB  **)(pcode + 112), I1413);
    }
    pcode += 120;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate220_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate220(pcode, val);
}
void  rmaPropagate221 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    if (*(pcode + 0) == val) {
        return  ;
    }
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 16);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 24))(*(UB  **)(pcode + 32), I1413);
    }
    pcode += 40;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate226 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 16))(*(UB  **)(pcode + 24), I1413);
    }
    pcode += 32;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate226_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate226(pcode, val);
}
void  rmaPropagate228 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    *(pcode + 1) = X4val[val];
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        U  I1635;
        U  I1636;
        EBLK  * I1400;
        struct dummyq_struct * pQ;
        U  I1403;
        I1403 = 0;
        pQ = (struct dummyq_struct *)ref_vcs_clocks;
        I1141 = X4val[val];
        I1628 = *(pcode + 16);
        *(pcode + 16) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 4560) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 24), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 24));
            }
        }
        if (I1583 & 8718) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 64), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 64));
            }
        }
    }
    pcode += 104;
    {
        EBLK  * I1400;
        *((*(UB  **)(pcode + 8)) + 1) = X4val[val];
        I1400 = (EBLK  *)(pcode + 0);
        if (I1400->I664 == 0) {
            struct dummyq_struct * pQ;
            U  I1403;
            I1403 = 0;
            pQ = (struct dummyq_struct *)ref_vcs_clocks;
            EBLK  * I1598 = (EBLK  *)pvcsGetLastEventEblk(I1403);
            I1400->I664 = pQ->I1335;
            pQ->I1335 = I1400;
            {
                (pQ->semilerOptQueuesFlag |= (0x1 << 2));
            }
            if (0 && rmaProfEvtProp) {
                vcs_simpSetEBlkEvtID(I1400);
            }
            I1400 = I1598;
            if (!(I1400->I664)) {
                if ((semilerOpt != 0) && (I1598 == I1400)) {
                }
                else {
                    pQ->I1324->I664 = I1400;
                    pQ->I1324 = I1400;
                }
                I1400->I664 = ((EBLK  *)-1);
                if (0 && rmaProfEvtProp) {
                    vcs_simpSetEBlkEvtID(I1400);
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        GateCount  I646;
        I646 = *(U  *)(pcode + 40);
        pcode += 48;
        for (; I646 > 0; I646--) {
            {
                typedef
                US
                 stateType;
                typedef
                US
                 * stateTypePtr;
                pcode1 = *(UB  **)(pcode + 0);
                iinput = (U )(((RP )pcode1) & 7);
                pcode1 = (UB  *)(((RP )pcode1) & ~7);
                {
                    RP  I1504 = 1;
                    if (I1504) {
                        state = *(stateTypePtr )(pcode1 + 16U);
                        state &= ~(3 << (iinput * 2));
                        state |= X4val[val] << (iinput * 2);
                        *(stateTypePtr )(pcode1 + 16U) = state;
                        newval = *((*(UB  **)(pcode1 + 8U)) + state);
                        if (newval != *(pcode1 + 18U)) {
                            *(pcode1 + 18U) = newval;
                            (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                        }
                    }
                }
            }
            pcode += 8;
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 0))(*(UB  **)(pcode + 8), I1413);
    }
    pcode += 16;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate228_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate228(pcode, val);
}
void  rmaPropagate229 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    {
        EBLK  * I1400;
        struct dummyq_struct * pQ;
        U  I1403;
        I1403 = 0;
        pQ = (struct dummyq_struct *)ref_vcs_clocks;
        if (*(scalar  *)((pcode + 0) + 24U) != val) {
            RmaEblk  * I1400 = (RmaEblk  *)(pcode + 0);
            *(scalar  *)((pcode + 0) + 24U) = val;
            if (!(I1400->I664)) {
                pQ->I1302->I664 = (EBLK  *)I1400;
                pQ->I1302 = (EBLK  *)I1400;
                I1400->I664 = (RP )((EBLK  *)-1);
                if (0 && rmaProfEvtProp) {
                    vcs_simpSetEBlkEvtID(I1400);
                }
            }
        }
    }
}
void  rmaPropagate229_s0 (UB  * pcode, scalar  val)
{
    val = *(scalar  *)((pcode + 0) + 24U);
    if (*(pcode + 40) == val) {
        return  ;
    }
    *(pcode + 40) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 48);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        GateCount  I646;
        I646 = *(U  *)(pcode + 56);
        pcode += 64;
        for (; I646 > 0; I646--) {
            {
                typedef
                US
                 stateType;
                typedef
                US
                 * stateTypePtr;
                pcode1 = *(UB  **)(pcode + 0);
                iinput = (U )(((RP )pcode1) & 7);
                pcode1 = (UB  *)(((RP )pcode1) & ~7);
                {
                    RP  I1504 = 1;
                    if (I1504) {
                        state = *(stateTypePtr )(pcode1 + 16U);
                        state &= ~(3 << (iinput * 2));
                        state |= X4val[val] << (iinput * 2);
                        *(stateTypePtr )(pcode1 + 16U) = state;
                        newval = *((*(UB  **)(pcode1 + 8U)) + state);
                        if (newval != *(pcode1 + 18U)) {
                            *(pcode1 + 18U) = newval;
                            (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                        }
                    }
                }
            }
            pcode += 8;
        }
    }
    {
        scalar  newval;
        U  state;
        U  startBit;
        UB  * pcode1;
        pcode1 = *(UB  **)(pcode + 8);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 0);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
        pcode1 = *(UB  **)(pcode + 24);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 16);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 32))(*(UB  **)(pcode + 40), I1413);
    }
    pcode += 48;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate230 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    if (*(pcode + 0) == val) {
        return  ;
    }
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 16))(*(UB  **)(pcode + 24), I1413);
    }
    pcode += 32;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate231 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 16))(*(UB  **)(pcode + 24), I1413);
    }
    pcode += 32;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate232 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        {
            RP  I1504 = 1;
            if (I1504) {
                (*(FP  *)(pcode + 24U))(*(UB  **)(pcode + 32U), *((*(UB  **)(pcode + 16U)) + X4val[val]));
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        GateCount  I646;
        I646 = *(U  *)(pcode + 40);
        pcode += 48;
        for (; I646 > 0; I646--) {
            {
                typedef
                US
                 stateType;
                typedef
                US
                 * stateTypePtr;
                pcode1 = *(UB  **)(pcode + 0);
                iinput = (U )(((RP )pcode1) & 7);
                pcode1 = (UB  *)(((RP )pcode1) & ~7);
                {
                    RP  I1504 = 1;
                    if (I1504) {
                        state = *(stateTypePtr )(pcode1 + 16U);
                        state &= ~(3 << (iinput * 2));
                        state |= X4val[val] << (iinput * 2);
                        *(stateTypePtr )(pcode1 + 16U) = state;
                        newval = *((*(UB  **)(pcode1 + 8U)) + state);
                        if (newval != *(pcode1 + 18U)) {
                            *(pcode1 + 18U) = newval;
                            (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                        }
                    }
                }
            }
            pcode += 8;
        }
    }
    {
        scalar  newval;
        U  state;
        U  startBit;
        UB  * pcode1;
        pcode1 = *(UB  **)(pcode + 8);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 0);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
        pcode1 = *(UB  **)(pcode + 24);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 16);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 32))(*(UB  **)(pcode + 40), I1413);
    }
    pcode += 48;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate232_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate232(pcode, val);
}
void  rmaPropagate233 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        {
            RP  I1504 = 1;
            if (I1504) {
                (*(FP  *)(pcode + 24U))(*(UB  **)(pcode + 32U), *((*(UB  **)(pcode + 16U)) + X4val[val]));
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 40))(*(UB  **)(pcode + 48), I1413);
    }
    pcode += 56;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate233_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate233(pcode, val);
}
void  rmaPropagate238 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        I1141 = X4val[val];
        I1628 = *(pcode + 16);
        *(pcode + 16) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 4560) {
            *(RmaTimeStamp  *)(pcode + 24) = (RmaTimeStamp )vcs_clocks;
        }
    }
    pcode += 32;
    {
        EBLK  * I1400;
        *((*(UB  **)(pcode + 8)) + 1) = X4val[val];
        I1400 = (EBLK  *)(pcode + 0);
        if (I1400->I664 == 0) {
            struct dummyq_struct * pQ;
            U  I1403;
            I1403 = 0;
            pQ = (struct dummyq_struct *)ref_vcs_clocks;
            EBLK  * I1598 = (EBLK  *)pvcsGetLastEventEblk(I1403);
            I1400->I664 = pQ->I1335;
            pQ->I1335 = I1400;
            {
                (pQ->semilerOptQueuesFlag |= (0x1 << 2));
            }
            if (0 && rmaProfEvtProp) {
                vcs_simpSetEBlkEvtID(I1400);
            }
            I1400 = I1598;
            if (!(I1400->I664)) {
                if ((semilerOpt != 0) && (I1598 == I1400)) {
                }
                else {
                    pQ->I1324->I664 = I1400;
                    pQ->I1324 = I1400;
                }
                I1400->I664 = ((EBLK  *)-1);
                if (0 && rmaProfEvtProp) {
                    vcs_simpSetEBlkEvtID(I1400);
                }
            }
        }
    }
    {
        (*(FP  *)(pcode + 48))(*(UB  **)(pcode + 56), globalTable1Input[(*(U  *)(pcode + 40) >> 8) + val]);
    }
    pcode += 64;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate238_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate238(pcode, val);
}
void  rmaPropagate243 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    *(pcode + 1) = X4val[val];
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        I1141 = X4val[val];
        I1628 = *(pcode + 16);
        *(pcode + 16) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 8718) {
            *(RmaTimeStamp  *)(pcode + 24) = (RmaTimeStamp )vcs_clocks;
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        US  I235;
        I1141 = X3val[val];
        I1628 = *(pcode + 32);
        I235 = (I1628 << 2) + I1141;
        I1583 = 1 << I235;
        if (I1583 & 18) {
            if (I1583 & 2) {
                (*(FP  *)(pcode + 40))(*(void **)(pcode + 48), I235);
            }
        }
        else {
            U  I1487;
            U  I648;
            U  I1663;
            U  * I1665;
            UB  * pcode1;
            pcode1 = (UB  *)(*(UP  *)(pcode + 48) & ~3);
            I648 = *(U  *)pcode1;
            I1665 = (U  *)(pcode1 + sizeof(U ));
            I1663 = (I648 + 31) >> 5;
            pcode1 += sizeof(U ) * (1 + I1663);
            for (I1487 = 0; I1487 < I1663; I1487++) {
                if (I1487 == I1663 - 1 && (I648 % 32)) {
                    I1665[I1487] = (1 << (I648 % 32)) - 1;
                }
                else {
                    I1665[I1487] = (U )-1;
                }
            }
            pcode1 = (UB  *)((((RP )pcode1) + 7) & (~7));
            for (; I648 > 0; I648--) {
                (*(FP  *)(pcode1))(*(void **)(pcode1 + 8LU), I235);
                pcode1 += 16;
            }
        }
        *(pcode + 32U) = I1141;
    }
    pcode += 56;
    {
        EBLK  * I1400;
        *((*(UB  **)(pcode + 8)) + 1) = X4val[val];
        I1400 = (EBLK  *)(pcode + 0);
        if (I1400->I664 == 0) {
            struct dummyq_struct * pQ;
            U  I1403;
            I1403 = 0;
            pQ = (struct dummyq_struct *)ref_vcs_clocks;
            EBLK  * I1598 = (EBLK  *)pvcsGetLastEventEblk(I1403);
            I1400->I664 = pQ->I1335;
            pQ->I1335 = I1400;
            {
                (pQ->semilerOptQueuesFlag |= (0x1 << 2));
            }
            if (0 && rmaProfEvtProp) {
                vcs_simpSetEBlkEvtID(I1400);
            }
            I1400 = I1598;
            if (!(I1400->I664)) {
                if ((semilerOpt != 0) && (I1598 == I1400)) {
                }
                else {
                    pQ->I1324->I664 = I1400;
                    pQ->I1324 = I1400;
                }
                I1400->I664 = ((EBLK  *)-1);
                if (0 && rmaProfEvtProp) {
                    vcs_simpSetEBlkEvtID(I1400);
                }
            }
        }
    }
    {
        (*(FP  *)(pcode + 48))(*(UB  **)(pcode + 56), globalTable1Input[(*(U  *)(pcode + 40) >> 8) + val]);
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        GateCount  I646;
        I646 = *(U  *)(pcode + 64);
        pcode += 72;
        for (; I646 > 0; I646--) {
            {
                typedef
                US
                 stateType;
                typedef
                US
                 * stateTypePtr;
                pcode1 = *(UB  **)(pcode + 0);
                iinput = (U )(((RP )pcode1) & 7);
                pcode1 = (UB  *)(((RP )pcode1) & ~7);
                {
                    RP  I1504 = 1;
                    if (I1504) {
                        state = *(stateTypePtr )(pcode1 + 16U);
                        state &= ~(3 << (iinput * 2));
                        state |= X4val[val] << (iinput * 2);
                        *(stateTypePtr )(pcode1 + 16U) = state;
                        newval = *((*(UB  **)(pcode1 + 8U)) + state);
                        if (newval != *(pcode1 + 18U)) {
                            *(pcode1 + 18U) = newval;
                            (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                        }
                    }
                }
            }
            pcode += 8;
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 0);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 8);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    pcode += 16;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate243_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate243(pcode, val);
}
void  rmaPropagate245 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        U  I1635;
        U  I1636;
        EBLK  * I1400;
        struct dummyq_struct * pQ;
        U  I1403;
        I1403 = 0;
        pQ = (struct dummyq_struct *)ref_vcs_clocks;
        I1141 = X4val[val];
        I1628 = *(pcode + 16);
        *(pcode + 16) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 4560) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 24), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 24));
            }
        }
        if (I1583 & 8718) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 64), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 64));
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        GateCount  I646;
        I646 = *(U  *)(pcode + 104);
        pcode += 112;
        for (; I646 > 0; I646--) {
            {
                typedef
                US
                 stateType;
                typedef
                US
                 * stateTypePtr;
                pcode1 = *(UB  **)(pcode + 0);
                iinput = (U )(((RP )pcode1) & 7);
                pcode1 = (UB  *)(((RP )pcode1) & ~7);
                {
                    RP  I1504 = 1;
                    if (I1504) {
                        state = *(stateTypePtr )(pcode1 + 16U);
                        state &= ~(3 << (iinput * 2));
                        state |= X4val[val] << (iinput * 2);
                        *(stateTypePtr )(pcode1 + 16U) = state;
                        newval = *((*(UB  **)(pcode1 + 8U)) + state);
                        if (newval != *(pcode1 + 18U)) {
                            *(pcode1 + 18U) = newval;
                            (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                        }
                    }
                }
            }
            pcode += 8;
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 0))(*(UB  **)(pcode + 8), I1413);
    }
    pcode += 16;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate245_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate245(pcode, val);
}
void  rmaPropagate246 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    if (*(pcode + 0) == val) {
        return  ;
    }
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        GateCount  I646;
        I646 = *(U  *)(pcode + 16);
        pcode += 24;
        for (; I646 > 0; I646--) {
            {
                typedef
                US
                 stateType;
                typedef
                US
                 * stateTypePtr;
                pcode1 = *(UB  **)(pcode + 0);
                iinput = (U )(((RP )pcode1) & 7);
                pcode1 = (UB  *)(((RP )pcode1) & ~7);
                {
                    RP  I1504 = 1;
                    if (I1504) {
                        state = *(stateTypePtr )(pcode1 + 16U);
                        state &= ~(3 << (iinput * 2));
                        state |= X4val[val] << (iinput * 2);
                        *(stateTypePtr )(pcode1 + 16U) = state;
                        newval = *((*(UB  **)(pcode1 + 8U)) + state);
                        if (newval != *(pcode1 + 18U)) {
                            *(pcode1 + 18U) = newval;
                            (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                        }
                    }
                }
            }
            pcode += 8;
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 0);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 8);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    pcode += 16;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate247 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    if (*(pcode + 0) == val) {
        return  ;
    }
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        GateCount  I646;
        I646 = *(U  *)(pcode + 16);
        pcode += 24;
        for (; I646 > 0; I646--) {
            {
                typedef
                US
                 stateType;
                typedef
                US
                 * stateTypePtr;
                pcode1 = *(UB  **)(pcode + 0);
                iinput = (U )(((RP )pcode1) & 7);
                pcode1 = (UB  *)(((RP )pcode1) & ~7);
                {
                    RP  I1504 = 1;
                    if (I1504) {
                        state = *(stateTypePtr )(pcode1 + 16U);
                        state &= ~(3 << (iinput * 2));
                        state |= X4val[val] << (iinput * 2);
                        *(stateTypePtr )(pcode1 + 16U) = state;
                        newval = *((*(UB  **)(pcode1 + 8U)) + state);
                        if (newval != *(pcode1 + 18U)) {
                            *(pcode1 + 18U) = newval;
                            (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                        }
                    }
                }
            }
            pcode += 8;
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 0);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 8);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 16))(*(UB  **)(pcode + 24), I1413);
    }
    pcode += 32;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate248 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        {
            RP  I1504 = 1;
            if (I1504) {
                (*(FP  *)(pcode + 24U))(*(UB  **)(pcode + 32U), *((*(UB  **)(pcode + 16U)) + X4val[val]));
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        GateCount  I646;
        I646 = *(U  *)(pcode + 40);
        pcode += 48;
        for (; I646 > 0; I646--) {
            {
                typedef
                US
                 stateType;
                typedef
                US
                 * stateTypePtr;
                pcode1 = *(UB  **)(pcode + 0);
                iinput = (U )(((RP )pcode1) & 7);
                pcode1 = (UB  *)(((RP )pcode1) & ~7);
                {
                    RP  I1504 = 1;
                    if (I1504) {
                        state = *(stateTypePtr )(pcode1 + 16U);
                        state &= ~(3 << (iinput * 2));
                        state |= X4val[val] << (iinput * 2);
                        *(stateTypePtr )(pcode1 + 16U) = state;
                        newval = *((*(UB  **)(pcode1 + 8U)) + state);
                        if (newval != *(pcode1 + 18U)) {
                            *(pcode1 + 18U) = newval;
                            (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                        }
                    }
                }
            }
            pcode += 8;
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 0);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 8);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 16))(*(UB  **)(pcode + 24), I1413);
    }
    pcode += 32;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate248_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate248(pcode, val);
}
void  rmaPropagate250 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        I1141 = X4val[val];
        I1628 = *(pcode + 16);
        *(pcode + 16) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 8718) {
            *(RmaTimeStamp  *)(pcode + 24) = (RmaTimeStamp )vcs_clocks;
        }
    }
    pcode += 32;
    {
        EBLK  * I1400;
        *((*(UB  **)(pcode + 8)) + 1) = X4val[val];
        I1400 = (EBLK  *)(pcode + 0);
        if (I1400->I664 == 0) {
            struct dummyq_struct * pQ;
            U  I1403;
            I1403 = 0;
            pQ = (struct dummyq_struct *)ref_vcs_clocks;
            EBLK  * I1598 = (EBLK  *)pvcsGetLastEventEblk(I1403);
            I1400->I664 = pQ->I1335;
            pQ->I1335 = I1400;
            {
                (pQ->semilerOptQueuesFlag |= (0x1 << 2));
            }
            if (0 && rmaProfEvtProp) {
                vcs_simpSetEBlkEvtID(I1400);
            }
            I1400 = I1598;
            if (!(I1400->I664)) {
                if ((semilerOpt != 0) && (I1598 == I1400)) {
                }
                else {
                    pQ->I1324->I664 = I1400;
                    pQ->I1324 = I1400;
                }
                I1400->I664 = ((EBLK  *)-1);
                if (0 && rmaProfEvtProp) {
                    vcs_simpSetEBlkEvtID(I1400);
                }
            }
        }
    }
    {
        (*(FP  *)(pcode + 48))(*(UB  **)(pcode + 56), globalTable1Input[(*(U  *)(pcode + 40) >> 8) + val]);
    }
    pcode += 64;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate250_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate250(pcode, val);
}
void  rmaPropagate256 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        U  I1635;
        U  I1636;
        EBLK  * I1400;
        struct dummyq_struct * pQ;
        U  I1403;
        I1403 = 0;
        pQ = (struct dummyq_struct *)ref_vcs_clocks;
        I1141 = X4val[val];
        I1628 = *(pcode + 16);
        *(pcode + 16) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 4560) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 24), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 24));
            }
        }
        if (I1583 & 8718) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 64), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 64));
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        pcode += 104;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 0);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 8))(*(UB  **)(pcode + 16), I1413);
    }
    pcode += 24;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate256_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate256(pcode, val);
}
void  rmaPropagate258 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    *(pcode + 1) = X4val[val];
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        US  I235;
        I1141 = X3val[val];
        I1628 = *(pcode + 16);
        I235 = (I1628 << 2) + I1141;
        I1583 = 1 << I235;
        if (I1583 & 18) {
            if (I1583 & 2) {
                (*(FP  *)(pcode + 24))(*(void **)(pcode + 32), I235);
            }
        }
        else {
            U  I1487;
            U  I648;
            U  I1663;
            U  * I1665;
            UB  * pcode1;
            pcode1 = (UB  *)(*(UP  *)(pcode + 32) & ~3);
            I648 = *(U  *)pcode1;
            I1665 = (U  *)(pcode1 + sizeof(U ));
            I1663 = (I648 + 31) >> 5;
            pcode1 += sizeof(U ) * (1 + I1663);
            for (I1487 = 0; I1487 < I1663; I1487++) {
                if (I1487 == I1663 - 1 && (I648 % 32)) {
                    I1665[I1487] = (1 << (I648 % 32)) - 1;
                }
                else {
                    I1665[I1487] = (U )-1;
                }
            }
            pcode1 = (UB  *)((((RP )pcode1) + 7) & (~7));
            for (; I648 > 0; I648--) {
                (*(FP  *)(pcode1))(*(void **)(pcode1 + 8LU), I235);
                pcode1 += 16;
            }
        }
        *(pcode + 16U) = I1141;
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 40);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 48);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 56);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    pcode += 64;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate258_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate258(pcode, val);
}
void  rmaPropagate259 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    {
        EBLK  * I1400;
        struct dummyq_struct * pQ;
        U  I1403;
        I1403 = 0;
        pQ = (struct dummyq_struct *)ref_vcs_clocks;
        if (*(scalar  *)((pcode + 0) + 24U) != val) {
            RmaEblk  * I1400 = (RmaEblk  *)(pcode + 0);
            *(scalar  *)((pcode + 0) + 24U) = val;
            if (!(I1400->I664)) {
                pQ->I1302->I664 = (EBLK  *)I1400;
                pQ->I1302 = (EBLK  *)I1400;
                I1400->I664 = (RP )((EBLK  *)-1);
                if (0 && rmaProfEvtProp) {
                    vcs_simpSetEBlkEvtID(I1400);
                }
            }
        }
    }
}
void  rmaPropagate259_s0 (UB  * pcode, scalar  val)
{
    val = *(scalar  *)((pcode + 0) + 24U);
    if (*(pcode + 40) == val) {
        return  ;
    }
    *(pcode + 40) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 48);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  newval;
        U  state;
        U  startBit;
        UB  * pcode1;
        pcode1 = *(UB  **)(pcode + 64);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 56);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
        pcode1 = *(UB  **)(pcode + 80);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 72);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 88))(*(UB  **)(pcode + 96), I1413);
    }
    pcode += 104;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate260 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        (*(FP  *)(pcode + 24))(*(UB  **)(pcode + 32), globalTable1Input[(*(U  *)(pcode + 16) >> 8) + val]);
    }
    {
        {
            RP  I1504 = 1;
            if (I1504) {
                (*(FP  *)(pcode + 48U))(*(UB  **)(pcode + 56U), *((*(UB  **)(pcode + 40U)) + X4val[val]));
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 64);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  newval;
        U  state;
        U  startBit;
        UB  * pcode1;
        pcode1 = *(UB  **)(pcode + 80);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 72);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
        pcode1 = *(UB  **)(pcode + 96);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 88);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 104);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 112))(*(UB  **)(pcode + 120), I1413);
    }
    pcode += 128;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate260_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate260(pcode, val);
}
void  rmaPropagate261 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 16);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 24);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 32))(*(UB  **)(pcode + 40), I1413);
    }
    pcode += 48;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate261_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate261(pcode, val);
}
void  rmaPropagate262 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    {
        EBLK  * I1400;
        struct dummyq_struct * pQ;
        U  I1403;
        I1403 = 0;
        pQ = (struct dummyq_struct *)ref_vcs_clocks;
        if (*(scalar  *)((pcode + 0) + 24U) != val) {
            RmaEblk  * I1400 = (RmaEblk  *)(pcode + 0);
            *(scalar  *)((pcode + 0) + 24U) = val;
            if (!(I1400->I664)) {
                pQ->I1302->I664 = (EBLK  *)I1400;
                pQ->I1302 = (EBLK  *)I1400;
                I1400->I664 = (RP )((EBLK  *)-1);
                if (0 && rmaProfEvtProp) {
                    vcs_simpSetEBlkEvtID(I1400);
                }
            }
        }
    }
}
void  rmaPropagate262_s0 (UB  * pcode, scalar  val)
{
    val = *(scalar  *)((pcode + 0) + 24U);
    if (*(pcode + 40) == val) {
        return  ;
    }
    *(pcode + 40) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 48);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 56);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  newval;
        U  state;
        U  startBit;
        UB  * pcode1;
        pcode1 = *(UB  **)(pcode + 72);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 64);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
        pcode1 = *(UB  **)(pcode + 88);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 80);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 96))(*(UB  **)(pcode + 104), I1413);
    }
    pcode += 112;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate263 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        (*(FP  *)(pcode + 24))(*(UB  **)(pcode + 32), globalTable1Input[(*(U  *)(pcode + 16) >> 8) + val]);
    }
    {
        {
            RP  I1504 = 1;
            if (I1504) {
                (*(FP  *)(pcode + 48U))(*(UB  **)(pcode + 56U), *((*(UB  **)(pcode + 40U)) + X4val[val]));
            }
        }
    }
    {
        scalar  newval;
        U  state;
        U  startBit;
        UB  * pcode1;
        pcode1 = *(UB  **)(pcode + 72);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 64);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
        pcode1 = *(UB  **)(pcode + 88);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 80);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 96);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 104))(*(UB  **)(pcode + 112), I1413);
    }
    pcode += 120;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate263_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate263(pcode, val);
}
void  rmaPropagate265 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    *(pcode + 1) = X4val[val];
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        US  I235;
        I1141 = X3val[val];
        I1628 = *(pcode + 16);
        I235 = (I1628 << 2) + I1141;
        I1583 = 1 << I235;
        if (I1583 & 18) {
            if (I1583 & 2) {
                (*(FP  *)(pcode + 24))(*(void **)(pcode + 32), I235);
            }
        }
        else {
            U  I1487;
            U  I648;
            U  I1663;
            U  * I1665;
            UB  * pcode1;
            pcode1 = (UB  *)(*(UP  *)(pcode + 32) & ~3);
            I648 = *(U  *)pcode1;
            I1665 = (U  *)(pcode1 + sizeof(U ));
            I1663 = (I648 + 31) >> 5;
            pcode1 += sizeof(U ) * (1 + I1663);
            for (I1487 = 0; I1487 < I1663; I1487++) {
                if (I1487 == I1663 - 1 && (I648 % 32)) {
                    I1665[I1487] = (1 << (I648 % 32)) - 1;
                }
                else {
                    I1665[I1487] = (U )-1;
                }
            }
            pcode1 = (UB  *)((((RP )pcode1) + 7) & (~7));
            for (; I648 > 0; I648--) {
                (*(FP  *)(pcode1))(*(void **)(pcode1 + 8LU), I235);
                pcode1 += 16;
            }
        }
        *(pcode + 16U) = I1141;
    }
    pcode += 40;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate265_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate265(pcode, val);
}
void  rmaPropagate266 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        (*(FP  *)(pcode + 24))(*(UB  **)(pcode + 32), globalTable1Input[(*(U  *)(pcode + 16) >> 8) + val]);
    }
    {
        {
            RP  I1504 = 1;
            if (I1504) {
                (*(FP  *)(pcode + 48U))(*(UB  **)(pcode + 56U), *((*(UB  **)(pcode + 40U)) + X4val[val]));
            }
        }
    }
    {
        scalar  newval;
        U  state;
        U  startBit;
        UB  * pcode1;
        pcode1 = *(UB  **)(pcode + 72);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 64);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
        pcode1 = *(UB  **)(pcode + 88);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 80);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        GateCount  I646;
        I646 = *(U  *)(pcode + 96);
        pcode += 104;
        for (; I646 > 0; I646--) {
            {
                typedef
                US
                 stateType;
                typedef
                US
                 * stateTypePtr;
                pcode1 = *(UB  **)(pcode + 0);
                iinput = (U )(((RP )pcode1) & 7);
                pcode1 = (UB  *)(((RP )pcode1) & ~7);
                {
                    RP  I1504 = 1;
                    if (I1504) {
                        state = *(stateTypePtr )(pcode1 + 16U);
                        state &= ~(3 << (iinput * 2));
                        state |= X4val[val] << (iinput * 2);
                        *(stateTypePtr )(pcode1 + 16U) = state;
                        newval = *((*(UB  **)(pcode1 + 8U)) + state);
                        if (newval != *(pcode1 + 18U)) {
                            *(pcode1 + 18U) = newval;
                            (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                        }
                    }
                }
            }
            pcode += 8;
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 0))(*(UB  **)(pcode + 8), I1413);
    }
    pcode += 16;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate266_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate266(pcode, val);
}
void  rmaPropagate269 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    {
        EBLK  * I1400;
        struct dummyq_struct * pQ;
        U  I1403;
        I1403 = 0;
        pQ = (struct dummyq_struct *)ref_vcs_clocks;
        if (*(scalar  *)((pcode + 0) + 24U) != val) {
            RmaEblk  * I1400 = (RmaEblk  *)(pcode + 0);
            *(scalar  *)((pcode + 0) + 24U) = val;
            if (!(I1400->I664)) {
                pQ->I1302->I664 = (EBLK  *)I1400;
                pQ->I1302 = (EBLK  *)I1400;
                I1400->I664 = (RP )((EBLK  *)-1);
                if (0 && rmaProfEvtProp) {
                    vcs_simpSetEBlkEvtID(I1400);
                }
            }
        }
    }
}
void  rmaPropagate269_s0 (UB  * pcode, scalar  val)
{
    val = *(scalar  *)((pcode + 0) + 24U);
    if (*(pcode + 40) == val) {
        return  ;
    }
    *(pcode + 40) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 48);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  newval;
        U  state;
        U  startBit;
        UB  * pcode1;
        pcode1 = *(UB  **)(pcode + 64);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 56);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
        pcode1 = *(UB  **)(pcode + 80);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 72);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        GateCount  I646;
        I646 = *(U  *)(pcode + 88);
        pcode += 96;
        for (; I646 > 0; I646--) {
            {
                typedef
                US
                 stateType;
                typedef
                US
                 * stateTypePtr;
                pcode1 = *(UB  **)(pcode + 0);
                iinput = (U )(((RP )pcode1) & 7);
                pcode1 = (UB  *)(((RP )pcode1) & ~7);
                {
                    RP  I1504 = 1;
                    if (I1504) {
                        state = *(stateTypePtr )(pcode1 + 16U);
                        state &= ~(3 << (iinput * 2));
                        state |= X4val[val] << (iinput * 2);
                        *(stateTypePtr )(pcode1 + 16U) = state;
                        newval = *((*(UB  **)(pcode1 + 8U)) + state);
                        if (newval != *(pcode1 + 18U)) {
                            *(pcode1 + 18U) = newval;
                            (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                        }
                    }
                }
            }
            pcode += 8;
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 0))(*(UB  **)(pcode + 8), I1413);
    }
    pcode += 16;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate270 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        (*(FP  *)(pcode + 24))(*(UB  **)(pcode + 32), globalTable1Input[(*(U  *)(pcode + 16) >> 8) + val]);
    }
    {
        {
            RP  I1504 = 1;
            if (I1504) {
                (*(FP  *)(pcode + 48U))(*(UB  **)(pcode + 56U), *((*(UB  **)(pcode + 40U)) + X4val[val]));
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        GateCount  I646;
        I646 = *(U  *)(pcode + 64);
        pcode += 72;
        for (; I646 > 0; I646--) {
            {
                typedef
                US
                 stateType;
                typedef
                US
                 * stateTypePtr;
                pcode1 = *(UB  **)(pcode + 0);
                iinput = (U )(((RP )pcode1) & 7);
                pcode1 = (UB  *)(((RP )pcode1) & ~7);
                {
                    RP  I1504 = 1;
                    if (I1504) {
                        state = *(stateTypePtr )(pcode1 + 16U);
                        state &= ~(3 << (iinput * 2));
                        state |= X4val[val] << (iinput * 2);
                        *(stateTypePtr )(pcode1 + 16U) = state;
                        newval = *((*(UB  **)(pcode1 + 8U)) + state);
                        if (newval != *(pcode1 + 18U)) {
                            *(pcode1 + 18U) = newval;
                            (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                        }
                    }
                }
            }
            pcode += 8;
        }
    }
    {
        scalar  newval;
        U  state;
        U  startBit;
        UB  * pcode1;
        pcode1 = *(UB  **)(pcode + 8);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 0);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
        pcode1 = *(UB  **)(pcode + 24);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 16);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 32))(*(UB  **)(pcode + 40), I1413);
    }
    pcode += 48;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate270_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate270(pcode, val);
}
void  rmaPropagate273 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        {
            RP  I1504 = 1;
            if (I1504) {
                (*(FP  *)(pcode + 24U))(*(UB  **)(pcode + 32U), *((*(UB  **)(pcode + 16U)) + X4val[val]));
            }
        }
    }
    {
        scalar  newval;
        U  state;
        U  startBit;
        UB  * pcode1;
        pcode1 = *(UB  **)(pcode + 48);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 40);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
        pcode1 = *(UB  **)(pcode + 64);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 56);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        GateCount  I646;
        I646 = *(U  *)(pcode + 72);
        pcode += 80;
        for (; I646 > 0; I646--) {
            {
                typedef
                US
                 stateType;
                typedef
                US
                 * stateTypePtr;
                pcode1 = *(UB  **)(pcode + 0);
                iinput = (U )(((RP )pcode1) & 7);
                pcode1 = (UB  *)(((RP )pcode1) & ~7);
                {
                    RP  I1504 = 1;
                    if (I1504) {
                        state = *(stateTypePtr )(pcode1 + 16U);
                        state &= ~(3 << (iinput * 2));
                        state |= X4val[val] << (iinput * 2);
                        *(stateTypePtr )(pcode1 + 16U) = state;
                        newval = *((*(UB  **)(pcode1 + 8U)) + state);
                        if (newval != *(pcode1 + 18U)) {
                            *(pcode1 + 18U) = newval;
                            (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                        }
                    }
                }
            }
            pcode += 8;
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 0))(*(UB  **)(pcode + 8), I1413);
    }
    pcode += 16;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate273_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate273(pcode, val);
}
void  rmaPropagate275 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        {
            RP  I1504 = 1;
            if (I1504) {
                (*(FP  *)(pcode + 24U))(*(UB  **)(pcode + 32U), *((*(UB  **)(pcode + 16U)) + X4val[val]));
            }
        }
    }
    {
        scalar  newval;
        U  state;
        U  startBit;
        UB  * pcode1;
        pcode1 = *(UB  **)(pcode + 48);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 40);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
        pcode1 = *(UB  **)(pcode + 64);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 56);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 72);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 80))(*(UB  **)(pcode + 88), I1413);
    }
    pcode += 96;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate275_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate275(pcode, val);
}
void  rmaPropagate277 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        U  I1635;
        U  I1636;
        EBLK  * I1400;
        struct dummyq_struct * pQ;
        U  I1403;
        I1403 = 0;
        pQ = (struct dummyq_struct *)ref_vcs_clocks;
        I1141 = X4val[val];
        I1628 = *(pcode + 16);
        *(pcode + 16) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 4560) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 24), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 24));
            }
        }
        if (I1583 & 8718) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 64), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 64));
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        pcode += 104;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 0);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 8);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 16);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 24))(*(UB  **)(pcode + 32), I1413);
    }
    pcode += 40;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate277_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate277(pcode, val);
}
void  rmaPropagate279 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    *(pcode + 1) = X4val[val];
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        US  I235;
        I1141 = X3val[val];
        I1628 = *(pcode + 16);
        I235 = (I1628 << 2) + I1141;
        I1583 = 1 << I235;
        if (I1583 & 18) {
            if (I1583 & 2) {
                (*(FP  *)(pcode + 24))(*(void **)(pcode + 32), I235);
            }
        }
        else {
            U  I1487;
            U  I648;
            U  I1663;
            U  * I1665;
            UB  * pcode1;
            pcode1 = (UB  *)(*(UP  *)(pcode + 32) & ~3);
            I648 = *(U  *)pcode1;
            I1665 = (U  *)(pcode1 + sizeof(U ));
            I1663 = (I648 + 31) >> 5;
            pcode1 += sizeof(U ) * (1 + I1663);
            for (I1487 = 0; I1487 < I1663; I1487++) {
                if (I1487 == I1663 - 1 && (I648 % 32)) {
                    I1665[I1487] = (1 << (I648 % 32)) - 1;
                }
                else {
                    I1665[I1487] = (U )-1;
                }
            }
            pcode1 = (UB  *)((((RP )pcode1) + 7) & (~7));
            for (; I648 > 0; I648--) {
                (*(FP  *)(pcode1))(*(void **)(pcode1 + 8LU), I235);
                pcode1 += 16;
            }
        }
        *(pcode + 16U) = I1141;
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        GateCount  I646;
        I646 = *(U  *)(pcode + 40);
        pcode += 48;
        for (; I646 > 0; I646--) {
            {
                typedef
                US
                 stateType;
                typedef
                US
                 * stateTypePtr;
                pcode1 = *(UB  **)(pcode + 0);
                iinput = (U )(((RP )pcode1) & 7);
                pcode1 = (UB  *)(((RP )pcode1) & ~7);
                {
                    RP  I1504 = 1;
                    if (I1504) {
                        state = *(stateTypePtr )(pcode1 + 16U);
                        state &= ~(3 << (iinput * 2));
                        state |= X4val[val] << (iinput * 2);
                        *(stateTypePtr )(pcode1 + 16U) = state;
                        newval = *((*(UB  **)(pcode1 + 8U)) + state);
                        if (newval != *(pcode1 + 18U)) {
                            *(pcode1 + 18U) = newval;
                            (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                        }
                    }
                }
            }
            pcode += 8;
        }
    }
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate279_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate279(pcode, val);
}
void  rmaPropagate280 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    {
        EBLK  * I1400;
        struct dummyq_struct * pQ;
        U  I1403;
        I1403 = 0;
        pQ = (struct dummyq_struct *)ref_vcs_clocks;
        if (*(scalar  *)((pcode + 0) + 24U) != val) {
            RmaEblk  * I1400 = (RmaEblk  *)(pcode + 0);
            *(scalar  *)((pcode + 0) + 24U) = val;
            if (!(I1400->I664)) {
                pQ->I1302->I664 = (EBLK  *)I1400;
                pQ->I1302 = (EBLK  *)I1400;
                I1400->I664 = (RP )((EBLK  *)-1);
                if (0 && rmaProfEvtProp) {
                    vcs_simpSetEBlkEvtID(I1400);
                }
            }
        }
    }
}
void  rmaPropagate280_s0 (UB  * pcode, scalar  val)
{
    val = *(scalar  *)((pcode + 0) + 24U);
    if (*(pcode + 40) == val) {
        return  ;
    }
    *(pcode + 40) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 48);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 56);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 64);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 72);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  newval;
        U  state;
        U  startBit;
        UB  * pcode1;
        pcode1 = *(UB  **)(pcode + 88);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 80);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
        pcode1 = *(UB  **)(pcode + 104);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 96);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 112))(*(UB  **)(pcode + 120), I1413);
    }
    pcode += 128;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate282 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        I1141 = X4val[val];
        I1628 = *(pcode + 16);
        *(pcode + 16) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 8718) {
            *(RmaTimeStamp  *)(pcode + 24) = (RmaTimeStamp )vcs_clocks;
        }
    }
    {
        (*(FP  *)(pcode + 40))(*(UB  **)(pcode + 48), globalTable1Input[(*(U  *)(pcode + 32) >> 8) + val]);
    }
    {
        (*(FP  *)(pcode + 64))(*(UB  **)(pcode + 72), globalTable1Input[(*(U  *)(pcode + 56) >> 8) + val]);
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 80);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    pcode += 88;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate282_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate282(pcode, val);
}
void  rmaPropagate284 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        U  I1635;
        U  I1636;
        EBLK  * I1400;
        struct dummyq_struct * pQ;
        U  I1403;
        I1403 = 0;
        pQ = (struct dummyq_struct *)ref_vcs_clocks;
        I1141 = X4val[val];
        I1628 = *(pcode + 16);
        *(pcode + 16) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 8718) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 24), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 24));
            }
        }
        if (I1583 & 4560) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 64), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 64));
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        pcode += 104;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 0);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 8);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 16);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 24))(*(UB  **)(pcode + 32), I1413);
    }
    pcode += 40;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate284_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate284(pcode, val);
}
void  rmaPropagate286 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    *(pcode + 1) = X4val[val];
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        US  I235;
        I1141 = X3val[val];
        I1628 = *(pcode + 16);
        I235 = (I1628 << 2) + I1141;
        I1583 = 1 << I235;
        if (I1583 & 18) {
            if (I1583 & 2) {
                (*(FP  *)(pcode + 24))(*(void **)(pcode + 32), I235);
            }
        }
        else {
            U  I1487;
            U  I648;
            U  I1663;
            U  * I1665;
            UB  * pcode1;
            pcode1 = (UB  *)(*(UP  *)(pcode + 32) & ~3);
            I648 = *(U  *)pcode1;
            I1665 = (U  *)(pcode1 + sizeof(U ));
            I1663 = (I648 + 31) >> 5;
            pcode1 += sizeof(U ) * (1 + I1663);
            for (I1487 = 0; I1487 < I1663; I1487++) {
                if (I1487 == I1663 - 1 && (I648 % 32)) {
                    I1665[I1487] = (1 << (I648 % 32)) - 1;
                }
                else {
                    I1665[I1487] = (U )-1;
                }
            }
            pcode1 = (UB  *)((((RP )pcode1) + 7) & (~7));
            for (; I648 > 0; I648--) {
                (*(FP  *)(pcode1))(*(void **)(pcode1 + 8LU), I235);
                pcode1 += 16;
            }
        }
        *(pcode + 16U) = I1141;
    }
    {
        (*(FP  *)(pcode + 48))(*(UB  **)(pcode + 56), globalTable1Input[(*(U  *)(pcode + 40) >> 8) + val]);
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 64);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 72);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 80);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    pcode += 88;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate286_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate286(pcode, val);
}
void  rmaPropagate287 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    if (*(pcode + 0) == val) {
        return  ;
    }
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 16);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 24);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    pcode += 32;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate288 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    if (*(pcode + 0) == val) {
        return  ;
    }
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 16);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 24);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 32);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 40))(*(UB  **)(pcode + 48), I1413);
    }
    pcode += 56;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate289 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        {
            RP  I1504 = 1;
            if (I1504) {
                (*(FP  *)(pcode + 24U))(*(UB  **)(pcode + 32U), *((*(UB  **)(pcode + 16U)) + X4val[val]));
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 40);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 48);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 56))(*(UB  **)(pcode + 64), I1413);
    }
    pcode += 72;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate289_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate289(pcode, val);
}
void  rmaPropagate291 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        U  I1635;
        U  I1636;
        EBLK  * I1400;
        struct dummyq_struct * pQ;
        U  I1403;
        I1403 = 0;
        pQ = (struct dummyq_struct *)ref_vcs_clocks;
        I1141 = X4val[val];
        I1628 = *(pcode + 16);
        *(pcode + 16) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 8718) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 24), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 24));
            }
        }
        if (I1583 & 4560) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 64), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 64));
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        pcode += 104;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 0);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 8))(*(UB  **)(pcode + 16), I1413);
    }
    pcode += 24;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate291_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate291(pcode, val);
}
void  rmaPropagate293 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    *(pcode + 1) = X4val[val];
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        US  I235;
        I1141 = X3val[val];
        I1628 = *(pcode + 16);
        I235 = (I1628 << 2) + I1141;
        I1583 = 1 << I235;
        if (I1583 & 18) {
            if (I1583 & 2) {
                (*(FP  *)(pcode + 24))(*(void **)(pcode + 32), I235);
            }
        }
        else {
            U  I1487;
            U  I648;
            U  I1663;
            U  * I1665;
            UB  * pcode1;
            pcode1 = (UB  *)(*(UP  *)(pcode + 32) & ~3);
            I648 = *(U  *)pcode1;
            I1665 = (U  *)(pcode1 + sizeof(U ));
            I1663 = (I648 + 31) >> 5;
            pcode1 += sizeof(U ) * (1 + I1663);
            for (I1487 = 0; I1487 < I1663; I1487++) {
                if (I1487 == I1663 - 1 && (I648 % 32)) {
                    I1665[I1487] = (1 << (I648 % 32)) - 1;
                }
                else {
                    I1665[I1487] = (U )-1;
                }
            }
            pcode1 = (UB  *)((((RP )pcode1) + 7) & (~7));
            for (; I648 > 0; I648--) {
                (*(FP  *)(pcode1))(*(void **)(pcode1 + 8LU), I235);
                pcode1 += 16;
            }
        }
        *(pcode + 16U) = I1141;
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 40);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 48);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 56);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    pcode += 64;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate293_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate293(pcode, val);
}
void  rmaPropagate294 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 16);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 24))(*(UB  **)(pcode + 32), I1413);
    }
    pcode += 40;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate294_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate294(pcode, val);
}
void  rmaPropagate295 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        {
            RP  I1504 = 1;
            if (I1504) {
                (*(FP  *)(pcode + 24U))(*(UB  **)(pcode + 32U), *((*(UB  **)(pcode + 16U)) + X4val[val]));
            }
        }
    }
    {
        scalar  newval;
        U  state;
        U  startBit;
        UB  * pcode1;
        pcode1 = *(UB  **)(pcode + 48);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 40);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
        pcode1 = *(UB  **)(pcode + 64);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 56);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 72);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 80);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 88))(*(UB  **)(pcode + 96), I1413);
    }
    pcode += 104;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate295_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate295(pcode, val);
}
void  rmaPropagate296 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 16);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 24);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 32))(*(UB  **)(pcode + 40), I1413);
    }
    pcode += 48;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate296_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate296(pcode, val);
}
void  rmaPropagate299 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        U  I1635;
        U  I1636;
        EBLK  * I1400;
        struct dummyq_struct * pQ;
        U  I1403;
        I1403 = 0;
        pQ = (struct dummyq_struct *)ref_vcs_clocks;
        I1141 = X4val[val];
        I1628 = *(pcode + 16);
        *(pcode + 16) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 4560) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 24), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 24));
            }
        }
        if (I1583 & 8718) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 64), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 64));
            }
        }
    }
    {
        {
            RP  I1504 = 1;
            if (I1504) {
                (*(FP  *)(pcode + 112U))(*(UB  **)(pcode + 120U), *((*(UB  **)(pcode + 104U)) + X4val[val]));
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        pcode += 128;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 0);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 8))(*(UB  **)(pcode + 16), I1413);
    }
    pcode += 24;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate299_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate299(pcode, val);
}
void  rmaPropagate301 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        U  I1635;
        U  I1636;
        EBLK  * I1400;
        struct dummyq_struct * pQ;
        U  I1403;
        I1403 = 0;
        pQ = (struct dummyq_struct *)ref_vcs_clocks;
        I1141 = X4val[val];
        I1628 = *(pcode + 16);
        *(pcode + 16) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 4560) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 24), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 24));
            }
        }
        if (I1583 & 8718) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 64), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 64));
            }
        }
    }
    {
        {
            RP  I1504 = 1;
            if (I1504) {
                (*(FP  *)(pcode + 112U))(*(UB  **)(pcode + 120U), *((*(UB  **)(pcode + 104U)) + X4val[val]));
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        pcode += 128;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 0);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 8);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 16))(*(UB  **)(pcode + 24), I1413);
    }
    pcode += 32;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate301_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate301(pcode, val);
}
void  rmaPropagate303 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        I1141 = X4val[val];
        I1628 = *(pcode + 16);
        *(pcode + 16) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 8718) {
            *(RmaTimeStamp  *)(pcode + 24) = (RmaTimeStamp )vcs_clocks;
        }
    }
    {
        (*(FP  *)(pcode + 40))(*(UB  **)(pcode + 48), globalTable1Input[(*(U  *)(pcode + 32) >> 8) + val]);
    }
    {
        (*(FP  *)(pcode + 64))(*(UB  **)(pcode + 72), globalTable1Input[(*(U  *)(pcode + 56) >> 8) + val]);
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 80);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 88);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 96);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    pcode += 104;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate303_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate303(pcode, val);
}
void  rmaPropagate304 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    if (*(pcode + 0) == val) {
        return  ;
    }
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 16);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 24);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    pcode += 32;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate306 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        U  I1635;
        U  I1636;
        EBLK  * I1400;
        struct dummyq_struct * pQ;
        U  I1403;
        I1403 = 0;
        pQ = (struct dummyq_struct *)ref_vcs_clocks;
        I1141 = X4val[val];
        I1628 = *(pcode + 16);
        *(pcode + 16) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 8718) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 24), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 24));
            }
        }
        if (I1583 & 4560) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 64), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 64));
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 104))(*(UB  **)(pcode + 112), I1413);
    }
    pcode += 120;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate306_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate306(pcode, val);
}
void  rmaPropagate307 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        {
            RP  I1504 = 1;
            if (I1504) {
                (*(FP  *)(pcode + 24U))(*(UB  **)(pcode + 32U), *((*(UB  **)(pcode + 16U)) + X4val[val]));
            }
        }
    }
    {
        typedef
        US
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            US
             stateType;
            typedef
            US
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 40);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 16U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 16U) = state;
                    newval = *((*(UB  **)(pcode1 + 8U)) + state);
                    if (newval != *(pcode1 + 18U)) {
                        *(pcode1 + 18U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  newval;
        U  state;
        U  startBit;
        UB  * pcode1;
        pcode1 = *(UB  **)(pcode + 56);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 48);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
        pcode1 = *(UB  **)(pcode + 72);
        {
            RP  I1504 = 1;
            if (I1504) {
                startBit = *(U  *)(pcode + 64);
                state = *(U  *)(pcode1 + 16U);
                state &= ~(0x3 << startBit);
                state |= X4val[val] << startBit;
                *(U  *)(pcode1 + 16U) = state;
                newval = *((*(UB  **)(pcode1 + 8U)) + state);
                if (newval != *(pcode1 + 20U)) {
                    *(pcode1 + 20U) = newval;
                    (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                }
            }
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 80);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 88))(*(UB  **)(pcode + 96), I1413);
    }
    pcode += 104;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate307_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate307(pcode, val);
}
void  rmaPropagate309 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        U  I1635;
        U  I1636;
        EBLK  * I1400;
        struct dummyq_struct * pQ;
        U  I1403;
        I1403 = 0;
        pQ = (struct dummyq_struct *)ref_vcs_clocks;
        I1141 = X4val[val];
        I1628 = *(pcode + 16);
        *(pcode + 16) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 4560) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 24), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 24));
            }
        }
        if (I1583 & 8718) {
            if (getCurSchedRegion()) {
                SchedSemiLerTBReactiveRegion_th((struct eblk *)(pcode + 64), I1403);
            }
            else {
                sched0_th(pQ, (EBLK  *)(pcode + 64));
            }
        }
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 104);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    {
        scalar  I1413;
        I1413 = val;
        (*(FP  *)(pcode + 112))(*(UB  **)(pcode + 120), I1413);
    }
    pcode += 128;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate309_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate309(pcode, val);
}
void  rmaPropagate311 (UB  * pcode, scalar  val)
{
    UB  * I1739;
    *(pcode + 0) = val;
    {
        {
            RP  * I655 = ((void *)0);
            I655 = (RP  *)(pcode + 8);
            if (I655) {
                RP  I1595 = *I655;
                if (I1595) {
                    hsimDispatchCbkMemOptNoDynElabS(I655, val, 0U);
                }
            }
        }
    }
    {
        scalar  I1628;
        scalar  I1141;
        U  I1583;
        I1141 = X4val[val];
        I1628 = *(pcode + 16);
        *(pcode + 16) = I1141;
        I1583 = (I1628 << 2) + I1141;
        I1583 = 1 << I1583;
        if (I1583 & 8718) {
            *(RmaTimeStamp  *)(pcode + 24) = (RmaTimeStamp )vcs_clocks;
        }
    }
    {
        (*(FP  *)(pcode + 40))(*(UB  **)(pcode + 48), globalTable1Input[(*(U  *)(pcode + 32) >> 8) + val]);
    }
    {
        (*(FP  *)(pcode + 64))(*(UB  **)(pcode + 72), globalTable1Input[(*(U  *)(pcode + 56) >> 8) + val]);
    }
    {
        typedef
        UB
         stateType;
        scalar  newval;
        stateType  state;
        U  iinput;
        UB  * pcode1;
        UB  * I1406;
        UB  * I1509;
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 80);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
        {
            typedef
            UB
             stateType;
            typedef
            UB
             * stateTypePtr;
            pcode1 = *(UB  **)(pcode + 88);
            iinput = (U )(((RP )pcode1) & 7);
            pcode1 = (UB  *)(((RP )pcode1) & ~7);
            {
                RP  I1504 = 1;
                if (I1504) {
                    state = *(stateTypePtr )(pcode1 + 12U);
                    state &= ~(3 << (iinput * 2));
                    state |= X4val[val] << (iinput * 2);
                    *(stateTypePtr )(pcode1 + 12U) = state;
                    newval = (*(U  *)(pcode1 + 8U) >> (state << 1)) & 3;
                    if (newval != *(pcode1 + 13U)) {
                        *(pcode1 + 13U) = newval;
                        (*(FP  *)(pcode1 + 0U))(pcode1, newval);
                    }
                }
            }
        }
    }
    pcode += 96;
    UB  * I740 = *(UB  **)(pcode + 0);
    if (I740 != (UB  *)(pcode + 0)) {
        RmaSwitchGate  * I1766 = (RmaSwitchGate  *)I740;
        RmaSwitchGate  * I956 = 0;
        do {
            RmaIbfPcode  * I1093 = (RmaIbfPcode  *)(((UB  *)I1766) + 24U);
            ((FP )(I1093->I1093))((void *)I1093->pcode, val);
            RmaDoublyLinkedListElem  I1767;
            I1767.I956 = 0;
            RmaSwitchGateInCbkListInfo  I1768;
            I1768.I1252 = 0;
            I956 = (RmaSwitchGate  *)I1766->I637.I1769.I956;
        } while ((UB  *)(I1766 = I956) != (UB  *)I740);
    }
}
void  rmaPropagate311_t0 (UB  * pcode, UB  val)
{
    val = *(pcode + 0);
    *(pcode + 0) = 0xff;
    rmaPropagate311(pcode, val);
}
#ifdef __cplusplus
extern "C" {
#endif
void SinitHsimPats(void);
#ifdef __cplusplus
}
#endif
