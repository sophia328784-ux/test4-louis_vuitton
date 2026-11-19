package com.sensorsdata.analytics.android.sdk.util;

import android.view.View;
import android.view.ViewGroup;
import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.SALog;
import defpackage.r81;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class Pathfinder {
    private static final String TAG = "SA.PathFinder";
    private final IntStack mIndexStack = new IntStack();

    public interface Accumulator {
        void accumulate(View view);
    }

    public static class IntStack {
        private static final int MAX_INDEX_STACK_SIZE = 256;
        private final int[] mStack = new int[256];
        private int mStackSize = 0;

        public int alloc() {
            int i2 = this.mStackSize;
            this.mStackSize = i2 + 1;
            this.mStack[i2] = 0;
            return i2;
        }

        public void free() {
            int i2 = this.mStackSize - 1;
            this.mStackSize = i2;
            if (i2 < 0) {
                throw new ArrayIndexOutOfBoundsException(i2);
            }
        }

        public boolean full() {
            return this.mStack.length == this.mStackSize;
        }

        public void increment(int i2) {
            int[] iArr = this.mStack;
            iArr[i2] = iArr[i2] + 1;
        }

        public int read(int i2) {
            return this.mStack[i2];
        }
    }

    public static class PathElement {
        public static final int SHORTEST_PREFIX = 1;
        public static final int ZERO_LENGTH_PREFIX = 0;
        public final int index;
        public final int prefix;
        public final String viewClassName;
        public final int viewId;

        public PathElement(int i2, String str, int i3, int i4) {
            this.prefix = i2;
            this.viewClassName = str;
            this.index = i3;
            this.viewId = i4;
        }

        public String toString() {
            try {
                JSONObject jSONObject = new JSONObject();
                if (this.prefix == 1) {
                    jSONObject.put("prefix", "shortest");
                }
                String str = this.viewClassName;
                if (str != null) {
                    jSONObject.put("view_class", str);
                }
                int i2 = this.index;
                if (i2 > -1) {
                    jSONObject.put("index", i2);
                }
                int i3 = this.viewId;
                if (i3 > -1) {
                    jSONObject.put(b.a.f24015b, i3);
                }
                return jSONObject.toString();
            } catch (JSONException e2) {
                r81.g("Can't serialize PathElement to String", e2);
                return null;
            }
        }
    }

    private View findPrefixedMatch(PathElement pathElement, View view, int i2) {
        View viewFindPrefixedMatch;
        int i3 = this.mIndexStack.read(i2);
        if (matches(pathElement, view)) {
            this.mIndexStack.increment(i2);
            int i4 = pathElement.index;
            if (i4 == -1 || i4 == i3) {
                return view;
            }
        }
        if (pathElement.prefix != 1 || !(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = viewGroup.getChildAt(i5);
            if (childAt != null && (viewFindPrefixedMatch = findPrefixedMatch(pathElement, childAt, i2)) != null) {
                return viewFindPrefixedMatch;
            }
        }
        return null;
    }

    private void findTargetsInMatchedView(View view, List<PathElement> list, Accumulator accumulator) {
        if (list.isEmpty()) {
            accumulator.accumulate(view);
            return;
        }
        if (this.mIndexStack.full()) {
            SALog.i(TAG, "Path is too deep, there is no memory to perfrom the finding");
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            PathElement pathElement = list.get(0);
            List<PathElement> listSubList = list.subList(1, list.size());
            int childCount = viewGroup.getChildCount();
            int iAlloc = this.mIndexStack.alloc();
            for (int i2 = 0; i2 < childCount; i2++) {
                View viewFindPrefixedMatch = findPrefixedMatch(pathElement, viewGroup.getChildAt(i2), iAlloc);
                if (viewFindPrefixedMatch != null) {
                    findTargetsInMatchedView(viewFindPrefixedMatch, listSubList, accumulator);
                }
                if (pathElement.index >= 0 && this.mIndexStack.read(iAlloc) > pathElement.index) {
                    break;
                }
            }
            this.mIndexStack.free();
        }
    }

    public static boolean hasClassName(Object obj, String str) {
        Class<?> superclass = obj.getClass();
        String canonicalName = SnapCache.getInstance().getCanonicalName(superclass);
        while (canonicalName != null) {
            if (canonicalName.equals(str)) {
                return true;
            }
            if (superclass == Object.class) {
                return false;
            }
            superclass = superclass.getSuperclass();
            canonicalName = SnapCache.getInstance().getCanonicalName(superclass);
        }
        return false;
    }

    private boolean matches(PathElement pathElement, View view) {
        String str = pathElement.viewClassName;
        if (str == null || hasClassName(view, str)) {
            return -1 == pathElement.viewId || view.getId() == pathElement.viewId;
        }
        return false;
    }

    public void findTargetsInRoot(View view, List<PathElement> list, Accumulator accumulator) {
        if (list.isEmpty()) {
            return;
        }
        if (this.mIndexStack.full()) {
            SALog.i(TAG, "Path is too deep, there is no memory to perfrom the finding");
            return;
        }
        PathElement pathElement = list.get(0);
        List<PathElement> listSubList = list.subList(1, list.size());
        View viewFindPrefixedMatch = findPrefixedMatch(pathElement, view, this.mIndexStack.alloc());
        this.mIndexStack.free();
        if (viewFindPrefixedMatch != null) {
            findTargetsInMatchedView(viewFindPrefixedMatch, listSubList, accumulator);
        }
    }
}
