package androidx.vectordrawable.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.collection.ArrayMap;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.content.res.TypedArrayUtils;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback.AnonymousClass1;
import com.vuitton.android.R;
import defpackage.md;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class AnimatedVectorDrawableCompat extends VectorDrawableCommon implements Animatable2Compat {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnimatedVectorDrawableCompatState f20063c;
    public final Context d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Animator.AnimatorListener f20064e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ArrayList f20065f = null;
    public final Drawable.Callback g;

    public AnimatedVectorDrawableCompat(Context context) {
        Drawable.Callback callback = new Drawable.Callback() { // from class: androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat.1
            @Override // android.graphics.drawable.Drawable.Callback
            public final void invalidateDrawable(Drawable drawable) {
                AnimatedVectorDrawableCompat.this.invalidateSelf();
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
                AnimatedVectorDrawableCompat.this.scheduleSelf(runnable, j2);
            }

            @Override // android.graphics.drawable.Drawable.Callback
            public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
                AnimatedVectorDrawableCompat.this.unscheduleSelf(runnable);
            }
        };
        this.g = callback;
        this.d = context;
        this.f20063c = new AnimatedVectorDrawableCompatState(context, null, callback, null);
    }

    public static AnimatedVectorDrawableCompat a(Context context) {
        AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat(context);
        Resources resources = context.getResources();
        Resources.Theme theme = context.getTheme();
        ThreadLocal threadLocal = ResourcesCompat.f12034a;
        Drawable drawable = resources.getDrawable(R.drawable.mtrl_checkbox_button_checked_unchecked, theme);
        animatedVectorDrawableCompat.f20072b = drawable;
        drawable.setCallback(animatedVectorDrawableCompat.g);
        new AnimatedVectorDrawableDelegateState(animatedVectorDrawableCompat.f20072b.getConstantState());
        return animatedVectorDrawableCompat;
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public final void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            drawable.applyTheme(theme);
        }
    }

    public final void b(Animatable2Compat.AnimationCallback animationCallback) {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) drawable;
            if (animationCallback.f20061a == null) {
                animationCallback.f20061a = animationCallback.new AnonymousClass1();
            }
            animatedVectorDrawable.registerAnimationCallback(animationCallback.f20061a);
            return;
        }
        if (animationCallback == null) {
            return;
        }
        if (this.f20065f == null) {
            this.f20065f = new ArrayList();
        }
        if (this.f20065f.contains(animationCallback)) {
            return;
        }
        this.f20065f.add(animationCallback);
        if (this.f20064e == null) {
            this.f20064e = new AnimatorListenerAdapter() { // from class: androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    AnimatedVectorDrawableCompat animatedVectorDrawableCompat = AnimatedVectorDrawableCompat.this;
                    ArrayList arrayList = new ArrayList(animatedVectorDrawableCompat.f20065f);
                    int size = arrayList.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        ((Animatable2Compat.AnimationCallback) arrayList.get(i2)).a(animatedVectorDrawableCompat);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    AnimatedVectorDrawableCompat animatedVectorDrawableCompat = AnimatedVectorDrawableCompat.this;
                    ArrayList arrayList = new ArrayList(animatedVectorDrawableCompat.f20065f);
                    int size = arrayList.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        ((Animatable2Compat.AnimationCallback) arrayList.get(i2)).b(animatedVectorDrawableCompat);
                    }
                }
            };
        }
        this.f20063c.f20069b.addListener(this.f20064e);
    }

    public final boolean c(Animatable2Compat.AnimationCallback animationCallback) {
        Animator.AnimatorListener animatorListener;
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) drawable;
            if (animationCallback.f20061a == null) {
                animationCallback.f20061a = animationCallback.new AnonymousClass1();
            }
            animatedVectorDrawable.unregisterAnimationCallback(animationCallback.f20061a);
        }
        ArrayList arrayList = this.f20065f;
        if (arrayList == null || animationCallback == null) {
            return false;
        }
        boolean zRemove = arrayList.remove(animationCallback);
        if (this.f20065f.size() == 0 && (animatorListener = this.f20064e) != null) {
            this.f20063c.f20069b.removeListener(animatorListener);
            this.f20064e = null;
        }
        return zRemove;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            return drawable.canApplyTheme();
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        AnimatedVectorDrawableCompatState animatedVectorDrawableCompatState = this.f20063c;
        animatedVectorDrawableCompatState.f20068a.draw(canvas);
        if (animatedVectorDrawableCompatState.f20069b.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.f20072b;
        return drawable != null ? drawable.getAlpha() : this.f20063c.f20068a.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        int changingConfigurations = super.getChangingConfigurations();
        this.f20063c.getClass();
        return changingConfigurations;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = this.f20072b;
        return drawable != null ? drawable.getColorFilter() : this.f20063c.f20068a.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f20072b != null) {
            return new AnimatedVectorDrawableDelegateState(this.f20072b.getConstantState());
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.f20072b;
        return drawable != null ? drawable.getIntrinsicHeight() : this.f20063c.f20068a.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.f20072b;
        return drawable != null ? drawable.getIntrinsicWidth() : this.f20063c.f20068a.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f20072b;
        return drawable != null ? drawable.getOpacity() : this.f20063c.f20068a.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        AnimatedVectorDrawableCompatState animatedVectorDrawableCompatState;
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            animatedVectorDrawableCompatState = this.f20063c;
            if (eventType == 1 || (xmlPullParser.getDepth() < depth && eventType == 3)) {
                break;
            }
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray typedArrayF = TypedArrayUtils.f(resources, theme, attributeSet, AndroidResources.f20059e);
                    int resourceId = typedArrayF.getResourceId(0, 0);
                    if (resourceId != 0) {
                        VectorDrawableCompat vectorDrawableCompatA = VectorDrawableCompat.a(resourceId, theme, resources);
                        vectorDrawableCompatA.g = false;
                        vectorDrawableCompatA.setCallback(this.g);
                        VectorDrawableCompat vectorDrawableCompat = animatedVectorDrawableCompatState.f20068a;
                        if (vectorDrawableCompat != null) {
                            vectorDrawableCompat.setCallback(null);
                        }
                        animatedVectorDrawableCompatState.f20068a = vectorDrawableCompatA;
                    }
                    typedArrayF.recycle();
                } else if ("target".equals(name)) {
                    TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, AndroidResources.f20060f);
                    String string = typedArrayObtainAttributes.getString(0);
                    int resourceId2 = typedArrayObtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        Context context = this.d;
                        if (context == null) {
                            typedArrayObtainAttributes.recycle();
                            md.k("Context can't be null when inflating animators");
                            return;
                        }
                        Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, resourceId2);
                        animatorLoadAnimator.setTarget(animatedVectorDrawableCompatState.f20068a.f20074c.f20108b.o.get(string));
                        if (animatedVectorDrawableCompatState.f20070c == null) {
                            animatedVectorDrawableCompatState.f20070c = new ArrayList();
                            animatedVectorDrawableCompatState.d = new ArrayMap();
                        }
                        animatedVectorDrawableCompatState.f20070c.add(animatorLoadAnimator);
                        animatedVectorDrawableCompatState.d.put(animatorLoadAnimator, string);
                    }
                    typedArrayObtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
        if (animatedVectorDrawableCompatState.f20069b == null) {
            animatedVectorDrawableCompatState.f20069b = new AnimatorSet();
        }
        animatedVectorDrawableCompatState.f20069b.playTogether(animatedVectorDrawableCompatState.f20070c);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.f20072b;
        return drawable != null ? drawable.isAutoMirrored() : this.f20063c.f20068a.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        Drawable drawable = this.f20072b;
        return drawable != null ? ((AnimatedVectorDrawable) drawable).isRunning() : this.f20063c.f20069b.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        Drawable drawable = this.f20072b;
        return drawable != null ? drawable.isStateful() : this.f20063c.f20068a.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f20063c.f20068a.setBounds(rect);
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.VectorDrawableCommon, android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i2) {
        Drawable drawable = this.f20072b;
        return drawable != null ? drawable.setLevel(i2) : this.f20063c.f20068a.setLevel(i2);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f20072b;
        return drawable != null ? drawable.setState(iArr) : this.f20063c.f20068a.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i2) {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            drawable.setAlpha(i2);
        } else {
            this.f20063c.f20068a.setAlpha(i2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            drawable.setAutoMirrored(z);
        } else {
            this.f20063c.f20068a.setAutoMirrored(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f20063c.f20068a.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i2) {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            drawable.setTint(i2);
        } else {
            this.f20063c.f20068a.setTint(i2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
        } else {
            this.f20063c.f20068a.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            drawable.setTintMode(mode);
        } else {
            this.f20063c.f20068a.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        this.f20063c.f20068a.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
            return;
        }
        AnimatedVectorDrawableCompatState animatedVectorDrawableCompatState = this.f20063c;
        if (animatedVectorDrawableCompatState.f20069b.isStarted()) {
            return;
        }
        animatedVectorDrawableCompatState.f20069b.start();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        Drawable drawable = this.f20072b;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f20063c.f20069b.end();
        }
    }

    public static class AnimatedVectorDrawableCompatState extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public VectorDrawableCompat f20068a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public AnimatorSet f20069b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ArrayList f20070c;
        public ArrayMap d;

        public AnimatedVectorDrawableCompatState(Context context, AnimatedVectorDrawableCompatState animatedVectorDrawableCompatState, Drawable.Callback callback, Resources resources) {
            if (animatedVectorDrawableCompatState != null) {
                VectorDrawableCompat vectorDrawableCompat = animatedVectorDrawableCompatState.f20068a;
                if (vectorDrawableCompat != null) {
                    Drawable.ConstantState constantState = vectorDrawableCompat.getConstantState();
                    if (resources != null) {
                        this.f20068a = (VectorDrawableCompat) constantState.newDrawable(resources);
                    } else {
                        this.f20068a = (VectorDrawableCompat) constantState.newDrawable();
                    }
                    VectorDrawableCompat vectorDrawableCompat2 = this.f20068a;
                    vectorDrawableCompat2.mutate();
                    this.f20068a = vectorDrawableCompat2;
                    vectorDrawableCompat2.setCallback(callback);
                    this.f20068a.setBounds(animatedVectorDrawableCompatState.f20068a.getBounds());
                    this.f20068a.g = false;
                }
                ArrayList arrayList = animatedVectorDrawableCompatState.f20070c;
                if (arrayList != null) {
                    int size = arrayList.size();
                    this.f20070c = new ArrayList(size);
                    this.d = new ArrayMap(size);
                    for (int i2 = 0; i2 < size; i2++) {
                        Animator animator = (Animator) animatedVectorDrawableCompatState.f20070c.get(i2);
                        Animator animatorClone = animator.clone();
                        String str = (String) animatedVectorDrawableCompatState.d.get(animator);
                        animatorClone.setTarget(this.f20068a.f20074c.f20108b.o.get(str));
                        this.f20070c.add(animatorClone);
                        this.d.put(animatorClone, str);
                    }
                    if (this.f20069b == null) {
                        this.f20069b = new AnimatorSet();
                    }
                    this.f20069b.playTogether(this.f20070c);
                }
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }
    }

    public static class AnimatedVectorDrawableDelegateState extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Drawable.ConstantState f20071a;

        public AnimatedVectorDrawableDelegateState(Drawable.ConstantState constantState) {
            this.f20071a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final boolean canApplyTheme() {
            return this.f20071a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.f20071a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat(null);
            Drawable drawableNewDrawable = this.f20071a.newDrawable();
            animatedVectorDrawableCompat.f20072b = drawableNewDrawable;
            drawableNewDrawable.setCallback(animatedVectorDrawableCompat.g);
            return animatedVectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat(null);
            Drawable drawableNewDrawable = this.f20071a.newDrawable(resources);
            animatedVectorDrawableCompat.f20072b = drawableNewDrawable;
            drawableNewDrawable.setCallback(animatedVectorDrawableCompat.g);
            return animatedVectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat(null);
            Drawable drawableNewDrawable = this.f20071a.newDrawable(resources, theme);
            animatedVectorDrawableCompat.f20072b = drawableNewDrawable;
            drawableNewDrawable.setCallback(animatedVectorDrawableCompat.g);
            return animatedVectorDrawableCompat;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }
}
