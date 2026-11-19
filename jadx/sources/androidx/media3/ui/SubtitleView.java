package androidx.media3.ui;

import android.content.Context;
import android.content.res.Resources;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.FrameLayout;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.LanguageFeatureSpan;
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
public final class SubtitleView extends FrameLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List f18062b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CaptionStyleCompat f18063c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f18064e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f18065f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f18066h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f18067i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Output f18068j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public View f18069k;

    public interface Output {
        void a(List list, CaptionStyleCompat captionStyleCompat, float f2, int i2, float f3);
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ViewType {
    }

    public SubtitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f18062b = Collections.EMPTY_LIST;
        this.f18063c = CaptionStyleCompat.g;
        this.d = 0;
        this.f18064e = 0.0533f;
        this.f18065f = 0.08f;
        this.g = true;
        this.f18066h = true;
        CanvasSubtitleOutput canvasSubtitleOutput = new CanvasSubtitleOutput(context);
        this.f18068j = canvasSubtitleOutput;
        this.f18069k = canvasSubtitleOutput;
        addView(canvasSubtitleOutput);
        this.f18067i = 1;
    }

    private List<Cue> getCuesWithStylingPreferencesApplied() {
        if (this.g && this.f18066h) {
            return this.f18062b;
        }
        ArrayList arrayList = new ArrayList(this.f18062b.size());
        for (int i2 = 0; i2 < this.f18062b.size(); i2++) {
            Cue.Builder builderA = ((Cue) this.f18062b.get(i2)).a();
            if (!this.g) {
                builderA.n = false;
                CharSequence charSequence = builderA.f14102a;
                if (charSequence instanceof Spanned) {
                    if (!(charSequence instanceof Spannable)) {
                        builderA.b(SpannableString.valueOf(charSequence));
                    }
                    CharSequence charSequence2 = builderA.f14102a;
                    charSequence2.getClass();
                    Spannable spannable = (Spannable) charSequence2;
                    for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
                        if (!(obj instanceof LanguageFeatureSpan)) {
                            spannable.removeSpan(obj);
                        }
                    }
                }
                SubtitleViewUtils.a(builderA);
            } else if (!this.f18066h) {
                SubtitleViewUtils.a(builderA);
            }
            arrayList.add(builderA.a());
        }
        return arrayList;
    }

    private float getUserCaptionFontScale() {
        CaptioningManager captioningManager;
        if (isInEditMode() || (captioningManager = (CaptioningManager) getContext().getSystemService("captioning")) == null || !captioningManager.isEnabled()) {
            return 1.0f;
        }
        return captioningManager.getFontScale();
    }

    private CaptionStyleCompat getUserCaptionStyle() {
        if (isInEditMode()) {
            return CaptionStyleCompat.g;
        }
        CaptioningManager captioningManager = (CaptioningManager) getContext().getSystemService("captioning");
        if (captioningManager == null || !captioningManager.isEnabled()) {
            return CaptionStyleCompat.g;
        }
        CaptioningManager.CaptionStyle userStyle = captioningManager.getUserStyle();
        CaptionStyleCompat captionStyleCompat = CaptionStyleCompat.g;
        return new CaptionStyleCompat(userStyle.hasForegroundColor() ? userStyle.foregroundColor : captionStyleCompat.f17965a, userStyle.hasBackgroundColor() ? userStyle.backgroundColor : captionStyleCompat.f17966b, userStyle.hasWindowColor() ? userStyle.windowColor : captionStyleCompat.f17967c, userStyle.hasEdgeType() ? userStyle.edgeType : captionStyleCompat.d, userStyle.hasEdgeColor() ? userStyle.edgeColor : captionStyleCompat.f17968e, userStyle.getTypeface());
    }

    private <T extends View & Output> void setView(T t) {
        removeView(this.f18069k);
        View view = this.f18069k;
        if (view instanceof WebViewSubtitleOutput) {
            ((WebViewSubtitleOutput) view).f18071c.destroy();
        }
        this.f18069k = t;
        this.f18068j = t;
        addView(t);
    }

    public final void a() {
        Context context = getContext();
        float fApplyDimension = TypedValue.applyDimension(2, 16.0f, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics());
        this.d = 2;
        this.f18064e = fApplyDimension;
        d();
    }

    public final void b() {
        setStyle(getUserCaptionStyle());
    }

    public final void c() {
        setFractionalTextSize(getUserCaptionFontScale() * 0.0533f);
    }

    public final void d() {
        this.f18068j.a(getCuesWithStylingPreferencesApplied(), this.f18063c, this.f18064e, this.d, this.f18065f);
    }

    public void setApplyEmbeddedFontSizes(boolean z) {
        this.f18066h = z;
        d();
    }

    public void setApplyEmbeddedStyles(boolean z) {
        this.g = z;
        d();
    }

    public void setBottomPaddingFraction(float f2) {
        this.f18065f = f2;
        d();
    }

    public void setCues(List<Cue> list) {
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        this.f18062b = list;
        d();
    }

    public void setFractionalTextSize(float f2) {
        this.d = 0;
        this.f18064e = f2;
        d();
    }

    public void setStyle(CaptionStyleCompat captionStyleCompat) {
        this.f18063c = captionStyleCompat;
        d();
    }

    public void setViewType(int i2) {
        if (this.f18067i == i2) {
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
        this.f18067i = i2;
    }

    public SubtitleView(Context context) {
        this(context, null);
    }
}
