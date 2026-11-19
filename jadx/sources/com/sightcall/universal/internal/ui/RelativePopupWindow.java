package com.sightcall.universal.internal.ui;

import android.view.View;
import android.widget.PopupWindow;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
class RelativePopupWindow extends PopupWindow {

    @Retention(RetentionPolicy.SOURCE)
    public @interface HorizontalPosition {
        public static final int ALIGN_LEFT = 3;
        public static final int ALIGN_RIGHT = 4;
        public static final int CENTER = 0;
        public static final int LEFT = 1;
        public static final int RIGHT = 2;
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface VerticalPosition {
        public static final int ABOVE = 1;
        public static final int ALIGN_BOTTOM = 4;
        public static final int ALIGN_TOP = 3;
        public static final int BELOW = 2;
        public static final int CENTER = 0;
    }

    public RelativePopupWindow(int i2, int i3) {
        super(i2, i3);
    }

    private static int getDropDownMeasureSpecMode(int i2) {
        return i2 != -2 ? 1073741824 : 0;
    }

    private static int makeDropDownMeasureSpec(int i2) {
        return View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), getDropDownMeasureSpecMode(i2));
    }

    /* JADX WARN: Code duplicated, block: B:18:0x005a  */
    /* JADX WARN: Code duplicated, block: B:19:0x005c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:20:0x005e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:22:0x0061  */
    /* JADX WARN: Code duplicated, block: B:23:0x0066 A[PHI: r1
      0x0066: PHI (r1v4 int) = (r1v2 int), (r1v5 int) binds: [B:18:0x005a, B:22:0x0061] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:24:0x0068  */
    /* JADX WARN: Code duplicated, block: B:26:0x006e  */
    /* JADX WARN: Code duplicated, block: B:28:0x0078  */
    /* JADX WARN: Code duplicated, block: B:30:0x007c  */
    public void showOnAnchor(View view, int i2, int i3, int i4, int i5, boolean z) {
        int width;
        int height;
        setClippingEnabled(z);
        View contentView = getContentView();
        contentView.measure(makeDropDownMeasureSpec(getWidth()), makeDropDownMeasureSpec(getHeight()));
        int measuredWidth = contentView.getMeasuredWidth();
        int measuredHeight = contentView.getMeasuredHeight();
        if (!z) {
            int[] iArr = new int[2];
            view.getLocationInWindow(iArr);
            i4 += iArr[0];
            i5 += view.getHeight() + iArr[1];
        }
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 3) {
                    height = view.getHeight();
                } else if (i2 == 4) {
                }
                if (i3 != 0) {
                    if (i3 == 1) {
                        i4 -= measuredWidth;
                    } else if (i3 == 2) {
                        width = view.getWidth();
                    } else if (i3 == 4) {
                        measuredWidth -= view.getWidth();
                        i4 -= measuredWidth;
                    }
                    if (z) {
                        showAsDropDown(view, i4, i5, 0);
                    } else {
                        showAtLocation(view, 0, i4, i5);
                    }
                }
                width = (view.getWidth() / 2) - (measuredWidth / 2);
                i4 += width;
                if (z) {
                    showAsDropDown(view, i4, i5, 0);
                } else {
                    showAtLocation(view, 0, i4, i5);
                }
            }
            height = view.getHeight() + measuredHeight;
            i5 -= height;
            if (i3 != 0) {
                if (i3 == 1) {
                    i4 -= measuredWidth;
                } else if (i3 == 2) {
                    width = view.getWidth();
                } else if (i3 == 4) {
                    measuredWidth -= view.getWidth();
                    i4 -= measuredWidth;
                }
                if (z) {
                    showAsDropDown(view, i4, i5, 0);
                } else {
                    showAtLocation(view, 0, i4, i5);
                }
            }
            width = (view.getWidth() / 2) - (measuredWidth / 2);
            i4 += width;
            if (z) {
                showAsDropDown(view, i4, i5, 0);
            } else {
                showAtLocation(view, 0, i4, i5);
            }
        }
        measuredHeight = (measuredHeight / 2) + (view.getHeight() / 2);
        i5 -= measuredHeight;
        if (i3 != 0) {
            if (i3 == 1) {
                i4 -= measuredWidth;
            } else if (i3 == 2) {
                width = view.getWidth();
            } else if (i3 == 4) {
                measuredWidth -= view.getWidth();
                i4 -= measuredWidth;
            }
            if (z) {
                showAsDropDown(view, i4, i5, 0);
            } else {
                showAtLocation(view, 0, i4, i5);
            }
        }
        width = (view.getWidth() / 2) - (measuredWidth / 2);
        i4 += width;
        if (z) {
            showAsDropDown(view, i4, i5, 0);
        } else {
            showAtLocation(view, 0, i4, i5);
        }
    }

    public void showOnAnchor(View view, int i2, int i3, boolean z) {
        showOnAnchor(view, i2, i3, 0, 0, z);
    }
}
