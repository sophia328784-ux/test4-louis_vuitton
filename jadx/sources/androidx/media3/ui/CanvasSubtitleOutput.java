package androidx.media3.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.text.BidiFormatter;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.View;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Log;
import com.google.common.base.Splitter;
import defpackage.fc;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
final class CanvasSubtitleOutput extends View implements SubtitleView.Output {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f17961b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f17962c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f17963e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CaptionStyleCompat f17964f;
    public float g;

    public CanvasSubtitleOutput(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17961b = new ArrayList();
        this.f17962c = Collections.EMPTY_LIST;
        this.d = 0;
        this.f17963e = 0.0533f;
        this.f17964f = CaptionStyleCompat.g;
        this.g = 0.08f;
    }

    @Override // androidx.media3.ui.SubtitleView.Output
    public final void a(List list, CaptionStyleCompat captionStyleCompat, float f2, int i2, float f3) {
        this.f17962c = list;
        this.f17964f = captionStyleCompat;
        this.f17963e = f2;
        this.d = i2;
        this.g = f3;
        while (true) {
            ArrayList arrayList = this.f17961b;
            if (arrayList.size() >= list.size()) {
                invalidate();
                return;
            }
            arrayList.add(new SubtitlePainter(getContext()));
        }
    }

    /* JADX WARN: Code duplicated, block: B:257:0x05ee  */
    /* JADX WARN: Code duplicated, block: B:259:0x05f1  */
    /* JADX WARN: Code duplicated, block: B:261:0x05f4  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v21, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r11v4, types: [java.lang.CharSequence, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v8, types: [android.text.SpannableStringBuilder] */
    /* JADX WARN: Type inference failed for: r14v3, types: [java.lang.CharSequence, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v19, types: [com.google.common.base.Splitter] */
    /* JADX WARN: Type inference failed for: r7v6, types: [com.google.common.base.Splitter] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // android.view.View
    public final void dispatchDraw(Canvas canvas) {
        float f2;
        int i2;
        int i3;
        Object[] objArr;
        int[] iArr;
        Spanned spanned;
        int[] iArr2;
        List listD;
        int i4;
        int i5;
        int i6;
        int i7;
        float f3;
        int i8;
        float f4;
        int i9;
        int iMax;
        int iMin;
        int iRound;
        int i10;
        CanvasSubtitleOutput canvasSubtitleOutput = this;
        Canvas canvas2 = canvas;
        List list = canvasSubtitleOutput.f17962c;
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
        int i11 = paddingBottom - paddingTop;
        float fB = SubtitleViewUtils.b(canvasSubtitleOutput.d, height, i11, canvasSubtitleOutput.f17963e);
        float f5 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (fB <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return;
        }
        int size = list.size();
        int i12 = 0;
        while (i12 < size) {
            Cue cueA = (Cue) list.get(i12);
            float f6 = f5;
            if (cueA.p != Integer.MIN_VALUE) {
                Cue.Builder builderA = cueA.a();
                builderA.f14107h = -3.4028235E38f;
                builderA.f14108i = Integer.MIN_VALUE;
                builderA.f14104c = null;
                int i13 = cueA.f14097f;
                float f7 = cueA.f14096e;
                if (i13 == 0) {
                    builderA.f14105e = 1.0f - f7;
                    i10 = 0;
                    builderA.f14106f = 0;
                } else {
                    i10 = 0;
                    builderA.f14105e = (-f7) - 1.0f;
                    builderA.f14106f = 1;
                }
                int i14 = cueA.g;
                if (i14 == 0) {
                    builderA.g = 2;
                } else if (i14 == 2) {
                    builderA.g = i10;
                }
                cueA = builderA.a();
            }
            float fB2 = SubtitleViewUtils.b(cueA.n, height, i11, cueA.o);
            SubtitlePainter subtitlePainter = (SubtitlePainter) canvasSubtitleOutput.f17961b.get(i12);
            CaptionStyleCompat captionStyleCompat = canvasSubtitleOutput.f17964f;
            List list2 = list;
            float f8 = canvasSubtitleOutput.g;
            TextPaint textPaint = subtitlePainter.f18057f;
            int i15 = height;
            Bitmap bitmap = cueA.d;
            int i16 = i11;
            float f9 = cueA.f14101k;
            int i17 = size;
            float f10 = cueA.f14100j;
            int i18 = i12;
            int i19 = cueA.f14099i;
            float f11 = cueA.f14098h;
            int i20 = cueA.g;
            float f12 = fB;
            int i21 = cueA.f14097f;
            float f13 = cueA.f14096e;
            Layout.Alignment alignment = cueA.f14094b;
            ?? spannableStringBuilder = cueA.f14093a;
            boolean z = bitmap == null;
            if (z) {
                if (TextUtils.isEmpty(spannableStringBuilder)) {
                    i7 = paddingBottom;
                } else {
                    f2 = f11;
                    i2 = cueA.l ? cueA.m : captionStyleCompat.f17967c;
                }
                i12 = i18 + 1;
                canvasSubtitleOutput = this;
                paddingBottom = i7;
                f5 = f6;
                list = list2;
                height = i15;
                i11 = i16;
                size = i17;
                fB = f12;
            } else {
                f2 = f11;
                i2 = com.batch.android.q0.b.v;
            }
            ?? r14 = subtitlePainter.f18059i;
            if ((r14 == spannableStringBuilder || (r14 != 0 && r14.equals(spannableStringBuilder))) && Objects.equals(subtitlePainter.f18060j, alignment) && subtitlePainter.f18061k == bitmap && subtitlePainter.l == f13 && subtitlePainter.m == i21) {
                i3 = i20;
                if (Integer.valueOf(subtitlePainter.n).equals(Integer.valueOf(i3)) && subtitlePainter.o == f2 && Integer.valueOf(subtitlePainter.p).equals(Integer.valueOf(i19)) && subtitlePainter.q == f10 && subtitlePainter.r == f9 && subtitlePainter.s == captionStyleCompat.f17965a && subtitlePainter.t == captionStyleCompat.f17966b && subtitlePainter.u == i2 && subtitlePainter.w == captionStyleCompat.d && subtitlePainter.v == captionStyleCompat.f17968e && Objects.equals(textPaint.getTypeface(), captionStyleCompat.f17969f) && subtitlePainter.x == f12 && subtitlePainter.y == fB2 && subtitlePainter.z == f8 && subtitlePainter.A == paddingLeft && subtitlePainter.B == paddingTop && subtitlePainter.C == width && subtitlePainter.D == paddingBottom) {
                    subtitlePainter.a(canvas2, z);
                    i7 = paddingBottom;
                }
                i12 = i18 + 1;
                canvasSubtitleOutput = this;
                paddingBottom = i7;
                f5 = f6;
                list = list2;
                height = i15;
                i11 = i16;
                size = i17;
                fB = f12;
            } else {
                i3 = i20;
            }
            Splitter splitter = BidiUtils.f17958a;
            if (spannableStringBuilder == 0) {
                i5 = width;
                paddingBottom = paddingBottom;
                z = z;
            } else {
                int length = spannableStringBuilder.length();
                int iCharCount = 0;
                while (true) {
                    if (iCharCount < length) {
                        int iCodePointAt = Character.codePointAt((CharSequence) spannableStringBuilder, iCharCount);
                        int i22 = length;
                        byte directionality = Character.getDirectionality(iCodePointAt);
                        int i23 = iCharCount;
                        if (directionality == 1 || directionality == 2 || directionality == 16 || directionality == 17) {
                            BidiFormatter bidiFormatter = BidiFormatter.getInstance();
                            if (spannableStringBuilder instanceof Spanned) {
                                spanned = (Spanned) spannableStringBuilder;
                                Object[] spans = spanned.getSpans(0, spannableStringBuilder.length(), Object.class);
                                int[] iArr3 = new int[spans.length];
                                iArr = new int[spans.length];
                                Arrays.fill(iArr3, -1);
                                Arrays.fill(iArr, -1);
                                objArr = spans;
                                iArr2 = iArr3;
                            } else {
                                objArr = null;
                                iArr = null;
                                spanned = null;
                                iArr2 = null;
                            }
                            int[] iArr4 = iArr;
                            if (spannableStringBuilder.toString().contains("\r\n")) {
                                listD = BidiUtils.f17959b.d(spannableStringBuilder);
                                i4 = 2;
                            } else {
                                listD = BidiUtils.f17958a.d(spannableStringBuilder);
                                i4 = 1;
                            }
                            List<String> list3 = listD;
                            ArrayList arrayList = new ArrayList(list3.size());
                            int i24 = 0;
                            int i25 = 0;
                            for (String str : list3) {
                                int i26 = i4;
                                int i27 = width;
                                String strUnicodeWrap = bidiFormatter.unicodeWrap(str, TextDirectionHeuristics.LTR);
                                if (objArr != null) {
                                    spanned.getClass();
                                    iArr2.getClass();
                                    iArr4.getClass();
                                    int length2 = strUnicodeWrap.length() - str.length();
                                    if (length2 > 0) {
                                        i25++;
                                    }
                                    for (int i28 = 0; i28 < objArr.length; i28 = i6 + 1) {
                                        if (iArr2[i28] >= 0 || spanned.getSpanStart(objArr[i28]) < i24) {
                                            i6 = i28;
                                        } else {
                                            i6 = i28;
                                            if (spanned.getSpanStart(objArr[i28]) < str.length() + i24) {
                                                iArr2[i6] = i25;
                                            }
                                        }
                                        if (iArr4[i6] < 0 && spanned.getSpanEnd(objArr[i6]) - 1 >= i24 && spanned.getSpanEnd(objArr[i6]) - 1 < str.length() + i24) {
                                            iArr4[i6] = i25;
                                        }
                                    }
                                    int length3 = str.length() + i26 + i24;
                                    if (length2 > 0) {
                                        i25++;
                                    }
                                    i24 = length3;
                                }
                                arrayList.add(strUnicodeWrap);
                                width = i27;
                                i4 = i26;
                                bidiFormatter = bidiFormatter;
                            }
                            i5 = width;
                            spannableStringBuilder = new SpannableStringBuilder(BidiUtils.f17960c.b(arrayList));
                            if (objArr != null) {
                                spanned.getClass();
                                iArr2.getClass();
                                iArr4.getClass();
                                int i29 = 0;
                                while (i29 < objArr.length) {
                                    int spanStart = spanned.getSpanStart(objArr[i29]) + iArr2[i29];
                                    int spanEnd = spanned.getSpanEnd(objArr[i29]) + iArr4[i29];
                                    int spanFlags = spanned.getSpanFlags(objArr[i29]);
                                    Object[] objArr2 = objArr;
                                    if (spanStart < 0 || spanStart >= spannableStringBuilder.length() || spanEnd < 0 || spanEnd > spannableStringBuilder.length()) {
                                        StringBuilder sbP = fc.p(spanStart, spanEnd, "Span out of bounds: start=", ",end=", ",len=");
                                        sbP.append(spannableStringBuilder.length());
                                        Log.g(sbP.toString());
                                    } else {
                                        spannableStringBuilder.setSpan(objArr2[i29], spanStart, spanEnd, spanFlags);
                                    }
                                    i29++;
                                    objArr = objArr2;
                                }
                            }
                        } else {
                            iCharCount = Character.charCount(iCodePointAt) + i23;
                            length = i22;
                        }
                    } else {
                        i5 = width;
                        paddingBottom = paddingBottom;
                        z = z;
                    }
                }
            }
            subtitlePainter.f18059i = spannableStringBuilder;
            subtitlePainter.f18060j = alignment;
            subtitlePainter.f18061k = bitmap;
            subtitlePainter.l = f13;
            subtitlePainter.m = i21;
            subtitlePainter.n = i3;
            subtitlePainter.o = f2;
            subtitlePainter.p = i19;
            subtitlePainter.q = f10;
            subtitlePainter.r = f9;
            subtitlePainter.s = captionStyleCompat.f17965a;
            subtitlePainter.t = captionStyleCompat.f17966b;
            subtitlePainter.u = i2;
            subtitlePainter.w = captionStyleCompat.d;
            subtitlePainter.v = captionStyleCompat.f17968e;
            textPaint.setTypeface(captionStyleCompat.f17969f);
            float f14 = f12;
            subtitlePainter.x = f14;
            subtitlePainter.y = fB2;
            subtitlePainter.z = f8;
            subtitlePainter.A = paddingLeft;
            subtitlePainter.B = paddingTop;
            width = i5;
            subtitlePainter.C = width;
            i7 = paddingBottom;
            subtitlePainter.D = i7;
            if (z) {
                subtitlePainter.f18059i.getClass();
                CharSequence charSequence = subtitlePainter.f18059i;
                SpannableStringBuilder spannableStringBuilder2 = charSequence instanceof SpannableStringBuilder ? (SpannableStringBuilder) charSequence : new SpannableStringBuilder(subtitlePainter.f18059i);
                int i30 = subtitlePainter.C - subtitlePainter.A;
                int i31 = subtitlePainter.D - subtitlePainter.B;
                textPaint.setTextSize(subtitlePainter.x);
                int i32 = (int) ((subtitlePainter.x * 0.125f) + 0.5f);
                int i33 = i32 * 2;
                int i34 = i30 - i33;
                float f15 = subtitlePainter.q;
                if (f15 != -3.4028235E38f) {
                    i34 = (int) (i34 * f15);
                }
                int i35 = i34;
                if (i35 <= 0) {
                    Log.g("Skipped drawing subtitle cue (insufficient space)");
                    f12 = f14;
                } else {
                    if (subtitlePainter.y > f6) {
                        i9 = 0;
                        spannableStringBuilder2.setSpan(new AbsoluteSizeSpan((int) subtitlePainter.y), 0, spannableStringBuilder2.length(), 16711680);
                    } else {
                        i9 = 0;
                    }
                    SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(spannableStringBuilder2);
                    if (subtitlePainter.w == 1) {
                        ForegroundColorSpan[] foregroundColorSpanArr = (ForegroundColorSpan[]) spannableStringBuilder3.getSpans(i9, spannableStringBuilder3.length(), ForegroundColorSpan.class);
                        int length4 = foregroundColorSpanArr.length;
                        int i36 = 0;
                        while (i36 < length4) {
                            spannableStringBuilder3.removeSpan(foregroundColorSpanArr[i36]);
                            i36++;
                            f14 = f14;
                        }
                    }
                    f12 = f14;
                    if (Color.alpha(subtitlePainter.t) > 0) {
                        int i37 = subtitlePainter.w;
                        if (i37 == 0 || i37 == 2) {
                            spannableStringBuilder2.setSpan(new BackgroundColorSpan(subtitlePainter.t), 0, spannableStringBuilder2.length(), 16711680);
                        } else {
                            spannableStringBuilder3.setSpan(new BackgroundColorSpan(subtitlePainter.t), 0, spannableStringBuilder3.length(), 16711680);
                        }
                    }
                    Layout.Alignment alignment2 = subtitlePainter.f18060j;
                    if (alignment2 == null) {
                        alignment2 = Layout.Alignment.ALIGN_CENTER;
                    }
                    Layout.Alignment alignment3 = alignment2;
                    SpannableStringBuilder spannableStringBuilder4 = spannableStringBuilder2;
                    StaticLayout staticLayout = new StaticLayout(spannableStringBuilder4, textPaint, i35, alignment3, subtitlePainter.d, subtitlePainter.f18056e, true);
                    subtitlePainter.E = staticLayout;
                    int height2 = staticLayout.getHeight();
                    int i38 = 0;
                    int iMax2 = 0;
                    for (int lineCount = subtitlePainter.E.getLineCount(); i38 < lineCount; lineCount = lineCount) {
                        iMax2 = Math.max((int) Math.ceil(subtitlePainter.E.getLineWidth(i38)), iMax2);
                        i38++;
                        height2 = height2;
                    }
                    int i39 = height2;
                    int i40 = ((subtitlePainter.q == -3.4028235E38f || iMax2 >= i35) ? iMax2 : i35) + i33;
                    float f16 = subtitlePainter.o;
                    if (f16 != -3.4028235E38f) {
                        int iRound2 = Math.round(i30 * f16);
                        int i41 = subtitlePainter.A;
                        int i42 = iRound2 + i41;
                        int i43 = subtitlePainter.p;
                        if (i43 == 1) {
                            i42 = ((i42 * 2) - i40) / 2;
                        } else if (i43 == 2) {
                            i42 -= i40;
                        }
                        iMax = Math.max(i42, i41);
                        iMin = Math.min(iMax + i40, subtitlePainter.C);
                    } else {
                        iMax = subtitlePainter.A + ((i30 - i40) / 2);
                        iMin = iMax + i40;
                    }
                    int i44 = iMin - iMax;
                    if (i44 <= 0) {
                        Log.g("Skipped drawing subtitle cue (invalid horizontal positioning)");
                    } else {
                        float f17 = subtitlePainter.l;
                        if (f17 != -3.4028235E38f) {
                            if (subtitlePainter.m == 0) {
                                iRound = Math.round(i31 * f17) + subtitlePainter.B;
                                int i45 = subtitlePainter.n;
                                if (i45 == 2) {
                                    iRound -= i39;
                                } else if (i45 == 1) {
                                    iRound = ((iRound * 2) - i39) / 2;
                                }
                            } else {
                                int lineBottom = subtitlePainter.E.getLineBottom(0) - subtitlePainter.E.getLineTop(0);
                                float f18 = subtitlePainter.l;
                                iRound = f18 >= f6 ? Math.round(f18 * lineBottom) + subtitlePainter.B : (Math.round((f18 + 1.0f) * lineBottom) + subtitlePainter.D) - i39;
                            }
                            int i46 = iRound + i39;
                            int i47 = subtitlePainter.D;
                            if (i46 > i47) {
                                iRound = i47 - i39;
                            } else {
                                int i48 = subtitlePainter.B;
                                if (iRound < i48) {
                                    iRound = i48;
                                }
                            }
                        } else {
                            iRound = (subtitlePainter.D - i39) - ((int) (i31 * subtitlePainter.z));
                        }
                        subtitlePainter.E = new StaticLayout(spannableStringBuilder4, textPaint, i44, alignment3, subtitlePainter.d, subtitlePainter.f18056e, true);
                        subtitlePainter.F = new StaticLayout(spannableStringBuilder3, textPaint, i44, alignment3, subtitlePainter.d, subtitlePainter.f18056e, true);
                        subtitlePainter.G = iMax;
                        subtitlePainter.H = iRound;
                        subtitlePainter.I = i32;
                    }
                }
            } else {
                f12 = f14;
                subtitlePainter.f18061k.getClass();
                Bitmap bitmap2 = subtitlePainter.f18061k;
                int i49 = subtitlePainter.C;
                int i50 = subtitlePainter.A;
                int i51 = subtitlePainter.D;
                int i52 = subtitlePainter.B;
                float f19 = i49 - i50;
                float f20 = (subtitlePainter.o * f19) + i50;
                float f21 = i51 - i52;
                float f22 = (subtitlePainter.l * f21) + i52;
                int iRound3 = Math.round(f19 * subtitlePainter.q);
                float f23 = subtitlePainter.r;
                int iRound4 = f23 != -3.4028235E38f ? Math.round(f21 * f23) : Math.round((bitmap2.getHeight() / bitmap2.getWidth()) * iRound3);
                int i53 = subtitlePainter.p;
                if (i53 == 2) {
                    f3 = iRound3;
                } else {
                    if (i53 == 1) {
                        f3 = iRound3 / 2;
                    }
                    int iRound5 = Math.round(f20);
                    i8 = subtitlePainter.n;
                    if (i8 == 2) {
                        f4 = iRound4;
                    } else {
                        if (i8 == 1) {
                            f4 = iRound4 / 2;
                        }
                        int iRound6 = Math.round(f22);
                        subtitlePainter.J = new Rect(iRound5, iRound6, iRound3 + iRound5, iRound4 + iRound6);
                    }
                    f22 -= f4;
                    int iRound7 = Math.round(f22);
                    subtitlePainter.J = new Rect(iRound5, iRound7, iRound3 + iRound5, iRound4 + iRound7);
                }
                f20 -= f3;
                int iRound8 = Math.round(f20);
                i8 = subtitlePainter.n;
                if (i8 == 2) {
                    f4 = iRound4;
                } else {
                    if (i8 == 1) {
                        f4 = iRound4 / 2;
                    }
                    int iRound9 = Math.round(f22);
                    subtitlePainter.J = new Rect(iRound8, iRound9, iRound3 + iRound8, iRound4 + iRound9);
                }
                f22 -= f4;
                int iRound10 = Math.round(f22);
                subtitlePainter.J = new Rect(iRound8, iRound10, iRound3 + iRound8, iRound4 + iRound10);
            }
            canvas2 = canvas;
            subtitlePainter.a(canvas2, z);
            i12 = i18 + 1;
            canvasSubtitleOutput = this;
            paddingBottom = i7;
            f5 = f6;
            list = list2;
            height = i15;
            i11 = i16;
            size = i17;
            fB = f12;
        }
    }

    public CanvasSubtitleOutput(Context context) {
        this(context, null);
    }
}
