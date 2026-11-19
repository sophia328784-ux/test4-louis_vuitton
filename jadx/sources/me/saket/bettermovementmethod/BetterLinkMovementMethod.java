package me.saket.bettermovementmethod;

import android.graphics.RectF;
import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.text.style.BackgroundColorSpan;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.MotionEvent;
import android.widget.TextView;
import com.vuitton.android.R;

/* JADX INFO: loaded from: classes2.dex */
public class BetterLinkMovementMethod extends LinkMovementMethod {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static BetterLinkMovementMethod f76246f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RectF f76247a = new RectF();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f76248b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ClickableSpan f76249c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f76250e;

    public interface OnLinkClickListener {
    }

    public interface OnLinkLongClickListener {
    }

    public final void a(TextView textView, ClickableSpan clickableSpan, Spannable spannable) {
        if (this.f76248b) {
            return;
        }
        this.f76248b = true;
        int spanStart = spannable.getSpanStart(clickableSpan);
        int spanEnd = spannable.getSpanEnd(clickableSpan);
        BackgroundColorSpan backgroundColorSpan = new BackgroundColorSpan(textView.getHighlightColor());
        spannable.setSpan(backgroundColorSpan, spanStart, spanEnd, 18);
        textView.setTag(R.id.bettermovementmethod_highlight_background_span, backgroundColorSpan);
        Selection.setSelection(spannable, spanStart, spanEnd);
    }

    public final void b(TextView textView) {
        if (this.f76248b) {
            this.f76248b = false;
            Spannable spannable = (Spannable) textView.getText();
            spannable.removeSpan((BackgroundColorSpan) textView.getTag(R.id.bettermovementmethod_highlight_background_span));
            Selection.removeSelection(spannable);
        }
    }

    @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public final boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        ClickableSpan clickableSpan;
        if (this.d != textView.hashCode()) {
            this.d = textView.hashCode();
            textView.setAutoLinkMask(0);
        }
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int totalPaddingLeft = x - textView.getTotalPaddingLeft();
        int totalPaddingTop = y - textView.getTotalPaddingTop();
        int scrollX = textView.getScrollX() + totalPaddingLeft;
        int scrollY = textView.getScrollY() + totalPaddingTop;
        Layout layout = textView.getLayout();
        int lineForVertical = layout.getLineForVertical(scrollY);
        float f2 = scrollX;
        int offsetForHorizontal = layout.getOffsetForHorizontal(lineForVertical, f2);
        float lineLeft = layout.getLineLeft(lineForVertical);
        RectF rectF = this.f76247a;
        rectF.left = lineLeft;
        rectF.top = layout.getLineTop(lineForVertical);
        rectF.right = layout.getLineWidth(lineForVertical) + rectF.left;
        rectF.bottom = layout.getLineBottom(lineForVertical);
        if (!rectF.contains(f2, scrollY)) {
            clickableSpan = null;
            break;
        }
        Object[] spans = spannable.getSpans(offsetForHorizontal, offsetForHorizontal, ClickableSpan.class);
        int length = spans.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                clickableSpan = null;
                break;
            }
            Object obj = spans[i2];
            if (obj instanceof ClickableSpan) {
                clickableSpan = (ClickableSpan) obj;
                break;
            }
            i2++;
        }
        if (motionEvent.getAction() == 0) {
            this.f76249c = clickableSpan;
        }
        boolean z = this.f76249c != null;
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                if (!this.f76250e && z && clickableSpan == this.f76249c) {
                    Spanned spanned = (Spanned) textView.getText();
                    if (clickableSpan instanceof URLSpan) {
                        ((URLSpan) clickableSpan).getURL();
                    } else {
                        spanned.subSequence(spanned.getSpanStart(clickableSpan), spanned.getSpanEnd(clickableSpan)).toString();
                    }
                    clickableSpan.onClick(textView);
                }
                this.f76250e = false;
                this.f76249c = null;
                b(textView);
            } else {
                if (action != 2) {
                    if (action == 3) {
                        this.f76250e = false;
                        this.f76249c = null;
                        b(textView);
                    }
                    return false;
                }
                if (!this.f76250e) {
                    if (clickableSpan != null) {
                        a(textView, clickableSpan, spannable);
                        return z;
                    }
                    b(textView);
                    return z;
                }
            }
        } else if (clickableSpan != null) {
            a(textView, clickableSpan, spannable);
        }
        return z;
    }
}
