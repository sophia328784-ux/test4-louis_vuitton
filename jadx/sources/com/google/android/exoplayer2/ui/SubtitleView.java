package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.span.LanguageFeatureSpan;
import com.google.android.exoplayer2.util.Util;
import defpackage.ct0;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class SubtitleView extends FrameLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List f28420b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CaptionStyleCompat f28421c;
    public float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f28422e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f28423f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f28424h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Output f28425i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public View f28426j;

    public interface Output {
        void a(List list, CaptionStyleCompat captionStyleCompat, float f2, float f3);
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ViewType {
    }

    public SubtitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f28420b = Collections.EMPTY_LIST;
        this.f28421c = CaptionStyleCompat.g;
        this.d = 0.0533f;
        this.f28422e = 0.08f;
        this.f28423f = true;
        this.g = true;
        CanvasSubtitleOutput canvasSubtitleOutput = new CanvasSubtitleOutput(context);
        this.f28425i = canvasSubtitleOutput;
        this.f28426j = canvasSubtitleOutput;
        addView(canvasSubtitleOutput);
        this.f28424h = 1;
    }

    private List<Cue> getCuesWithStylingPreferencesApplied() {
        if (this.f28423f && this.g) {
            return this.f28420b;
        }
        ArrayList arrayList = new ArrayList(this.f28420b.size());
        for (int i2 = 0; i2 < this.f28420b.size(); i2++) {
            Cue.Builder builderA = ((Cue) this.f28420b.get(i2)).a();
            if (!this.f28423f) {
                CharSequence charSequence = builderA.f28344a;
                if (charSequence instanceof Spanned) {
                    if (!(charSequence instanceof Spannable)) {
                        builderA.f28344a = SpannableString.valueOf(charSequence);
                    }
                    CharSequence charSequence2 = builderA.f28344a;
                    charSequence2.getClass();
                    Spannable spannable = (Spannable) charSequence2;
                    for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
                        if (!(obj instanceof LanguageFeatureSpan)) {
                            spannable.removeSpan(obj);
                        }
                    }
                }
                SubtitleViewUtils.a(builderA);
            } else if (!this.g) {
                SubtitleViewUtils.a(builderA);
            }
            arrayList.add(builderA.a());
        }
        return arrayList;
    }

    private float getUserCaptionFontScale() {
        CaptioningManager captioningManager;
        if (Util.f28451a < 19 || isInEditMode() || (captioningManager = (CaptioningManager) getContext().getSystemService("captioning")) == null || !captioningManager.isEnabled()) {
            return 1.0f;
        }
        return captioningManager.getFontScale();
    }

    private CaptionStyleCompat getUserCaptionStyle() {
        int i2 = Util.f28451a;
        if (i2 < 19 || isInEditMode()) {
            return CaptionStyleCompat.g;
        }
        CaptioningManager captioningManager = (CaptioningManager) getContext().getSystemService("captioning");
        if (captioningManager == null || !captioningManager.isEnabled()) {
            return CaptionStyleCompat.g;
        }
        CaptioningManager.CaptionStyle userStyle = captioningManager.getUserStyle();
        CaptionStyleCompat captionStyleCompat = CaptionStyleCompat.g;
        if (i2 < 21) {
            return new CaptionStyleCompat(userStyle.foregroundColor, userStyle.backgroundColor, 0, userStyle.edgeType, userStyle.edgeColor, userStyle.getTypeface());
        }
        CaptionStyleCompat captionStyleCompat2 = CaptionStyleCompat.g;
        return new CaptionStyleCompat(userStyle.hasForegroundColor() ? userStyle.foregroundColor : captionStyleCompat2.f28367a, userStyle.hasBackgroundColor() ? userStyle.backgroundColor : captionStyleCompat2.f28368b, userStyle.hasWindowColor() ? userStyle.windowColor : captionStyleCompat2.f28369c, userStyle.hasEdgeType() ? userStyle.edgeType : captionStyleCompat2.d, userStyle.hasEdgeColor() ? userStyle.edgeColor : captionStyleCompat2.f28370e, userStyle.getTypeface());
    }

    private <T extends View & Output> void setView(T t) {
        removeView(this.f28426j);
        View view = this.f28426j;
        if (view instanceof WebViewSubtitleOutput) {
            ((WebViewSubtitleOutput) view).f28428c.destroy();
        }
        this.f28426j = t;
        this.f28425i = t;
        addView(t);
    }

    public final void a() {
        setStyle(getUserCaptionStyle());
    }

    public final void b() {
        setFractionalTextSize(getUserCaptionFontScale() * 0.0533f);
    }

    public final void c() {
        this.f28425i.a(getCuesWithStylingPreferencesApplied(), this.f28421c, this.d, this.f28422e);
    }

    public void setApplyEmbeddedFontSizes(boolean z) {
        this.g = z;
        c();
    }

    public void setApplyEmbeddedStyles(boolean z) {
        this.f28423f = z;
        c();
    }

    public void setBottomPaddingFraction(float f2) {
        this.f28422e = f2;
        c();
    }

    public void setCues(List<Cue> list) {
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        this.f28420b = list;
        c();
    }

    public void setFractionalTextSize(float f2) {
        this.d = f2;
        c();
    }

    public void setStyle(CaptionStyleCompat captionStyleCompat) {
        this.f28421c = captionStyleCompat;
        c();
    }

    public void setViewType(int i2) {
        if (this.f28424h == i2) {
            return;
        }
        if (i2 == 1) {
            setView(new CanvasSubtitleOutput(getContext()));
        } else {
            if (i2 != 2) {
                ct0.c();
                return;
            }
            setView(new WebViewSubtitleOutput(getContext()));
        }
        this.f28424h = i2;
    }

    public SubtitleView(Context context) {
        this(context, null);
    }
}
