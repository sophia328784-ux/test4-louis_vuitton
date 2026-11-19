package com.batch.android.messaging.view.styled.mep;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.text.method.ScrollingMovementMethod;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Scroller;
import com.batch.android.e.t;
import com.batch.android.o0.b;
import com.batch.android.s0.c;
import java.util.Iterator;
import java.util.Map;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class TextView extends android.widget.TextView implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f23720a = "TextView";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Typeface f23721b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Typeface f23722c;

    public class a implements View.OnTouchListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        GestureDetector f23723a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Scroller f23724b;

        /* JADX INFO: renamed from: com.batch.android.messaging.view.styled.mep.TextView$a$a, reason: collision with other inner class name */
        public class C0061a extends GestureDetector.SimpleOnGestureListener {
            public C0061a() {
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
                int paddingBottom = TextView.this.getPaddingBottom() + TextView.this.getPaddingTop() + (TextView.this.getLayout().getHeight() - TextView.this.getHeight());
                a aVar = a.this;
                aVar.f23724b.fling(0, TextView.this.getScrollY(), 0, (int) (-f3), 0, 0, 0, paddingBottom);
                return super.onFling(motionEvent, motionEvent2, f2, f3);
            }
        }

        public a(Scroller scroller) {
            this.f23724b = scroller;
            this.f23723a = new GestureDetector(TextView.this.getContext(), new C0061a());
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (TextView.this.getLayout().getHeight() > TextView.this.getHeight()) {
                view.getParent().requestDisallowInterceptTouchEvent(true);
                this.f23723a.onTouchEvent(motionEvent);
            }
            return view.onTouchEvent(motionEvent);
        }
    }

    public TextView(Context context) {
        super(context);
    }

    public static void a(android.widget.TextView textView, Map<String, String> map) {
        Float fA;
        b.a(textView, map);
        Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
        int i2 = 0;
        boolean z = false;
        boolean z2 = false;
        float lineSpacingMultiplier = 0.0f;
        float lineSpacingExtra = 0.0f;
        Integer num = null;
        String value = null;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, String> next = it.next();
            if ("color".equalsIgnoreCase(next.getKey())) {
                try {
                    textView.setTextColor(Color.parseColor(next.getValue()));
                } catch (IllegalArgumentException e2) {
                    t.c(f23720a, "Unparsable text color (" + next.getValue() + ")", e2);
                }
            } else if ("text-align".equalsIgnoreCase(next.getKey())) {
                if ("left".equals(next.getValue())) {
                    num = 3;
                } else if ("right".equals(next.getValue())) {
                    num = 5;
                } else if ("center".equals(next.getValue())) {
                    num = 1;
                } else if ("auto".equals(next.getValue())) {
                    num = null;
                }
            } else if ("font-weight".equalsIgnoreCase(next.getKey())) {
                if ("bold".equals(next.getValue()) || "700".equals(next.getValue())) {
                    z = true;
                }
            } else if ("font-style".equalsIgnoreCase(next.getKey())) {
                if ("italic".equals(next.getValue())) {
                    z2 = true;
                }
            } else if ("font".equalsIgnoreCase(next.getKey())) {
                value = next.getValue();
            } else if ("font-size".equalsIgnoreCase(next.getKey())) {
                String value2 = next.getValue();
                boolean zEndsWith = value2.endsWith("sp");
                if (zEndsWith) {
                    value2 = value2.replace("sp", "");
                }
                Float fA2 = b.a(value2);
                if (fA2 != null) {
                    textView.setTextSize(zEndsWith ? 2 : 1, fA2.floatValue());
                }
            } else if ("letter-spacing".equalsIgnoreCase(next.getKey())) {
                Float fA3 = b.a(next.getValue());
                if (fA3 != null) {
                    textView.setLetterSpacing(fA3.floatValue());
                }
            } else if ("line-height".equalsIgnoreCase(next.getKey())) {
                Float fA4 = b.a(next.getValue());
                if (fA4 != null) {
                    lineSpacingMultiplier = fA4.floatValue();
                }
            } else if ("line-spacing".equalsIgnoreCase(next.getKey())) {
                Float fA5 = b.a(next.getValue());
                if (fA5 != null) {
                    lineSpacingExtra = fA5.floatValue();
                }
            } else if ("balanced".equalsIgnoreCase(next.getKey()) && (fA = b.a(next.getValue())) != null) {
                textView.setBreakStrategy(fA.floatValue() <= Call.Parameters.DEFAULT_CAMERA_ZOOM ? 0 : 2);
            }
        }
        textView.setGravity(num != null ? num.intValue() | 16 : 17);
        if (z) {
            i2 = z2 ? 3 : 1;
        } else if (z2) {
            i2 = 2;
        }
        Typeface typeface = f23721b;
        if (z) {
            typeface = f23722c;
        }
        textView.setTypeface(typeface != null ? Typeface.create(typeface, i2) : Typeface.create(value, i2));
        if (lineSpacingMultiplier == Call.Parameters.DEFAULT_CAMERA_ZOOM && lineSpacingExtra == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return;
        }
        if (lineSpacingExtra == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            lineSpacingExtra = textView.getLineSpacingExtra();
        }
        if (lineSpacingMultiplier == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            lineSpacingMultiplier = textView.getLineSpacingMultiplier();
        }
        textView.setLineSpacing(lineSpacingExtra, lineSpacingMultiplier);
    }

    public TextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    public TextView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }

    @Override // com.batch.android.s0.c
    public void a(Map<String, String> map) {
        a(this, map);
    }

    public void a() {
        setVerticalScrollBarEnabled(true);
        setScrollBarStyle(16777216);
        setMovementMethod(new ScrollingMovementMethod());
        Scroller scroller = new Scroller(getContext());
        setScroller(scroller);
        setOnTouchListener(new a(scroller));
    }
}
