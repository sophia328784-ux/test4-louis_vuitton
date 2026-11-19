package com.dynatrace.agent.userinteraction.util;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.dynatrace.agent.userinteraction.model.TouchAction;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"com.dynatrace.agent_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class UserInteractionUtilKt {
    /* JADX WARN: Code duplicated, block: B:16:0x0031 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:17:0x0032 A[RETURN] */
    public static final View a(ViewGroup viewGroup, int i2, int i3) {
        View childAt;
        viewGroup.getClass();
        if (!c(viewGroup, i2, i3)) {
            return viewGroup;
        }
        int childCount = viewGroup.getChildCount();
        do {
            childCount--;
            if (-1 < childCount) {
                childAt = viewGroup.getChildAt(childCount);
                childAt.getClass();
            } else {
                childAt = null;
            }
            if (childAt == null) {
                return viewGroup;
            }
            return childAt;
        } while (!c(childAt, i2, i3));
        if (childAt instanceof ViewGroup) {
            childAt = a((ViewGroup) childAt, i2, i3);
        }
        if (childAt == null) {
            return viewGroup;
        }
        return childAt;
    }

    public static final TouchAction b(MotionEvent motionEvent) {
        motionEvent.getClass();
        int action = motionEvent.getAction();
        if (action == 0) {
            return TouchAction.DOWN;
        }
        if (action == 1) {
            return TouchAction.UP;
        }
        if (action == 2) {
            return TouchAction.MOVE;
        }
        if (action != 5) {
            return action != 6 ? TouchAction.UNKNOWN : TouchAction.POINTER_UP;
        }
        return TouchAction.POINTER_DOWN;
    }

    public static final boolean c(View view, int i2, int i3) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i4 = iArr[0];
        int i5 = iArr[1];
        return i2 >= i4 && i2 <= view.getWidth() + i4 && i3 >= i5 && i3 <= view.getHeight() + i5;
    }
}
