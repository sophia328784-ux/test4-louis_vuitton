package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
final class CanvasSubtitleOutput extends View implements SubtitleView.Output {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f28363b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f28364c;
    public float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CaptionStyleCompat f28365e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f28366f;

    public CanvasSubtitleOutput(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f28363b = new ArrayList();
        this.f28364c = Collections.EMPTY_LIST;
        this.d = 0.0533f;
        this.f28365e = CaptionStyleCompat.g;
        this.f28366f = 0.08f;
    }

    @Override // com.google.android.exoplayer2.ui.SubtitleView.Output
    public final void a(List list, CaptionStyleCompat captionStyleCompat, float f2, float f3) {
        this.f28364c = list;
        this.f28365e = captionStyleCompat;
        this.d = f2;
        this.f28366f = f3;
        while (true) {
            ArrayList arrayList = this.f28363b;
            if (arrayList.size() >= list.size()) {
                invalidate();
                return;
            }
            arrayList.add(new SubtitlePainter(getContext()));
        }
    }

    @Override // android.view.View
    public final void dispatchDraw(Canvas canvas) {
        float f2;
        int i2;
        int iMax;
        int iMin;
        boolean z;
        int iRound;
        boolean z2;
        int i3;
        CanvasSubtitleOutput canvasSubtitleOutput = this;
        List list = canvasSubtitleOutput.f28364c;
        if (list.isEmpty()) {
            return;
        }
        int height = canvasSubtitleOutput.getHeight();
        int paddingLeft = canvasSubtitleOutput.getPaddingLeft();
        int paddingTop = canvasSubtitleOutput.getPaddingTop();
        int width = canvasSubtitleOutput.getWidth() - canvasSubtitleOutput.getPaddingRight();
        int paddingBottom = height - canvasSubtitleOutput.getPaddingBottom();
        if (paddingBottom <= paddingTop || width <= paddingLeft) {
            return;
        }
        int i4 = paddingBottom - paddingTop;
        float fB = SubtitleViewUtils.b(0, height, i4, canvasSubtitleOutput.d);
        float f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (fB <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return;
        }
        int size = list.size();
        int i5 = 0;
        while (i5 < size) {
            Cue cueA = (Cue) list.get(i5);
            float f4 = f3;
            if (cueA.m != Integer.MIN_VALUE) {
                Cue.Builder builderA = cueA.a();
                builderA.f28347e = -3.4028235E38f;
                builderA.f28348f = Integer.MIN_VALUE;
                int i6 = cueA.d;
                float f5 = cueA.f28337c;
                if (i6 == 0) {
                    builderA.f28345b = 1.0f - f5;
                    i3 = 0;
                    builderA.f28346c = 0;
                } else {
                    i3 = 0;
                    builderA.f28345b = (-f5) - 1.0f;
                    builderA.f28346c = 1;
                }
                int i7 = cueA.f28338e;
                if (i7 == 0) {
                    builderA.d = 2;
                } else if (i7 == 2) {
                    builderA.d = i3;
                }
                cueA = builderA.a();
            }
            float fB2 = SubtitleViewUtils.b(cueA.f28343k, height, i4, cueA.l);
            SubtitlePainter subtitlePainter = (SubtitlePainter) canvasSubtitleOutput.f28363b.get(i5);
            CaptionStyleCompat captionStyleCompat = canvasSubtitleOutput.f28365e;
            List list2 = list;
            float f6 = canvasSubtitleOutput.f28366f;
            TextPaint textPaint = subtitlePainter.f28415f;
            int i8 = height;
            float f7 = cueA.f28341i;
            int i9 = i4;
            float f8 = cueA.f28340h;
            int i10 = size;
            int i11 = cueA.g;
            int i12 = i5;
            float f9 = cueA.f28339f;
            int i13 = cueA.f28338e;
            int i14 = cueA.d;
            float f10 = fB;
            float f11 = cueA.f28337c;
            CharSequence charSequence = cueA.f28336b;
            if (TextUtils.isEmpty(charSequence)) {
                z = false;
            } else {
                int i15 = captionStyleCompat.f28369c;
                CharSequence charSequence2 = subtitlePainter.f28416h;
                if ((charSequence2 == charSequence || (charSequence2 != null && charSequence2.equals(charSequence))) && subtitlePainter.f28417i == f11 && subtitlePainter.f28418j == i14) {
                    f2 = f8;
                    if (Integer.valueOf(subtitlePainter.f28419k).equals(Integer.valueOf(i13)) && subtitlePainter.l == f9 && Integer.valueOf(subtitlePainter.m).equals(Integer.valueOf(i11)) && subtitlePainter.n == f2 && subtitlePainter.o == f7 && subtitlePainter.p == captionStyleCompat.f28367a && subtitlePainter.q == captionStyleCompat.f28368b && subtitlePainter.r == i15 && subtitlePainter.t == captionStyleCompat.d && subtitlePainter.s == captionStyleCompat.f28370e && Util.a(textPaint.getTypeface(), captionStyleCompat.f28371f) && subtitlePainter.u == f10 && subtitlePainter.v == fB2 && subtitlePainter.w == f6 && subtitlePainter.x == paddingLeft && subtitlePainter.y == paddingTop && subtitlePainter.z == width && subtitlePainter.A == paddingBottom) {
                        subtitlePainter.a(canvas, true);
                        z = false;
                    }
                } else {
                    f2 = f8;
                }
                subtitlePainter.f28416h = charSequence;
                subtitlePainter.f28417i = f11;
                subtitlePainter.f28418j = i14;
                subtitlePainter.f28419k = i13;
                subtitlePainter.l = f9;
                subtitlePainter.m = i11;
                subtitlePainter.n = f2;
                subtitlePainter.o = f7;
                subtitlePainter.p = captionStyleCompat.f28367a;
                subtitlePainter.q = captionStyleCompat.f28368b;
                subtitlePainter.r = i15;
                subtitlePainter.t = captionStyleCompat.d;
                subtitlePainter.s = captionStyleCompat.f28370e;
                textPaint.setTypeface(captionStyleCompat.f28371f);
                f10 = f10;
                subtitlePainter.u = f10;
                subtitlePainter.v = fB2;
                subtitlePainter.w = f6;
                subtitlePainter.x = paddingLeft;
                subtitlePainter.y = paddingTop;
                subtitlePainter.z = width;
                subtitlePainter.A = paddingBottom;
                subtitlePainter.f28416h.getClass();
                CharSequence charSequence3 = subtitlePainter.f28416h;
                SpannableStringBuilder spannableStringBuilder = charSequence3 instanceof SpannableStringBuilder ? (SpannableStringBuilder) charSequence3 : new SpannableStringBuilder(subtitlePainter.f28416h);
                int i16 = subtitlePainter.z - subtitlePainter.x;
                int i17 = subtitlePainter.A - subtitlePainter.y;
                textPaint.setTextSize(subtitlePainter.u);
                int i18 = (int) ((subtitlePainter.u * 0.125f) + 0.5f);
                int i19 = i18 * 2;
                int i20 = i16 - i19;
                float f12 = subtitlePainter.n;
                if (f12 != -3.4028235E38f) {
                    i20 = (int) (i20 * f12);
                }
                int i21 = i20;
                if (i21 <= 0) {
                    synchronized (Log.f28442a) {
                    }
                    f10 = f10;
                } else {
                    if (subtitlePainter.v > f4) {
                        i2 = 0;
                        spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int) subtitlePainter.v), 0, spannableStringBuilder.length(), 16711680);
                    } else {
                        i2 = 0;
                    }
                    SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(spannableStringBuilder);
                    if (subtitlePainter.t == 1) {
                        ForegroundColorSpan[] foregroundColorSpanArr = (ForegroundColorSpan[]) spannableStringBuilder2.getSpans(i2, spannableStringBuilder2.length(), ForegroundColorSpan.class);
                        int i22 = 0;
                        for (int length = foregroundColorSpanArr.length; i22 < length; length = length) {
                            spannableStringBuilder2.removeSpan(foregroundColorSpanArr[i22]);
                            i22++;
                        }
                    }
                    if (Color.alpha(subtitlePainter.q) > 0) {
                        int i23 = subtitlePainter.t;
                        if (i23 == 0 || i23 == 2) {
                            spannableStringBuilder.setSpan(new BackgroundColorSpan(subtitlePainter.q), 0, spannableStringBuilder.length(), 16711680);
                        } else {
                            spannableStringBuilder2.setSpan(new BackgroundColorSpan(subtitlePainter.q), 0, spannableStringBuilder2.length(), 16711680);
                        }
                    }
                    Layout.Alignment alignment = Layout.Alignment.ALIGN_CENTER;
                    SpannableStringBuilder spannableStringBuilder3 = spannableStringBuilder;
                    StaticLayout staticLayout = new StaticLayout(spannableStringBuilder3, r2, i21, alignment, subtitlePainter.d, subtitlePainter.f28414e, true);
                    subtitlePainter.B = staticLayout;
                    int height2 = staticLayout.getHeight();
                    int i24 = 0;
                    int iMax2 = 0;
                    for (int lineCount = subtitlePainter.B.getLineCount(); i24 < lineCount; lineCount = lineCount) {
                        iMax2 = Math.max((int) Math.ceil(subtitlePainter.B.getLineWidth(i24)), iMax2);
                        i24++;
                        height2 = height2;
                    }
                    int i25 = height2;
                    int i26 = ((subtitlePainter.n == -3.4028235E38f || iMax2 >= i21) ? iMax2 : i21) + i19;
                    float f13 = subtitlePainter.l;
                    if (f13 != -3.4028235E38f) {
                        int iRound2 = Math.round(i16 * f13);
                        int i27 = subtitlePainter.x;
                        int i28 = iRound2 + i27;
                        int i29 = subtitlePainter.m;
                        if (i29 == 1) {
                            i28 = ((i28 * 2) - i26) / 2;
                        } else if (i29 == 2) {
                            i28 -= i26;
                        }
                        iMax = Math.max(i28, i27);
                        iMin = Math.min(iMax + i26, subtitlePainter.z);
                    } else {
                        iMax = subtitlePainter.x + ((i16 - i26) / 2);
                        iMin = iMax + i26;
                    }
                    int i30 = iMin - iMax;
                    if (i30 <= 0) {
                        synchronized (Log.f28442a) {
                        }
                    } else {
                        float f14 = subtitlePainter.f28417i;
                        if (f14 != -3.4028235E38f) {
                            if (subtitlePainter.f28418j == 0) {
                                iRound = Math.round(i17 * f14) + subtitlePainter.y;
                                int i31 = subtitlePainter.f28419k;
                                if (i31 == 2) {
                                    iRound -= i25;
                                } else if (i31 == 1) {
                                    iRound = ((iRound * 2) - i25) / 2;
                                }
                                z = false;
                            } else {
                                z = false;
                                int lineBottom = subtitlePainter.B.getLineBottom(0) - subtitlePainter.B.getLineTop(0);
                                float f15 = subtitlePainter.f28417i;
                                iRound = f15 >= f4 ? Math.round(f15 * lineBottom) + subtitlePainter.y : (Math.round((f15 + 1.0f) * lineBottom) + subtitlePainter.A) - i25;
                            }
                            int i32 = iRound + i25;
                            int i33 = subtitlePainter.A;
                            if (i32 > i33) {
                                iRound = i33 - i25;
                            } else {
                                int i34 = subtitlePainter.y;
                                if (iRound < i34) {
                                    iRound = i34;
                                }
                            }
                        } else {
                            z = false;
                            iRound = (subtitlePainter.A - i25) - ((int) (i17 * subtitlePainter.w));
                        }
                        subtitlePainter.B = new StaticLayout(spannableStringBuilder3, r2, i30, alignment, subtitlePainter.d, subtitlePainter.f28414e, true);
                        subtitlePainter.C = new StaticLayout(spannableStringBuilder2, textPaint, i30, alignment, subtitlePainter.d, subtitlePainter.f28414e, true);
                        subtitlePainter.D = iMax;
                        subtitlePainter.E = iRound;
                        subtitlePainter.F = i18;
                        z2 = true;
                    }
                    subtitlePainter.a(canvas, z2);
                }
                z2 = true;
                z = false;
                subtitlePainter.a(canvas, z2);
            }
            i5 = i12 + 1;
            canvasSubtitleOutput = this;
            f3 = f4;
            list = list2;
            height = i8;
            i4 = i9;
            size = i10;
            fB = f10;
        }
    }

    public CanvasSubtitleOutput(Context context) {
        this(context, null);
    }
}
