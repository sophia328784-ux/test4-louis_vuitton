package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.R$styleable;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.fragment.app.strictmode.FragmentTagUsageViolation;
import defpackage.a61;
import defpackage.fc;
import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
class FragmentLayoutInflaterFactory implements LayoutInflater.Factory2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FragmentManager f13257b;

    public FragmentLayoutInflaterFactory(FragmentManager fragmentManager) {
        this.f13257b = fragmentManager;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean zIsAssignableFrom;
        final FragmentStateManager fragmentStateManagerI;
        boolean zEquals = FragmentContainerView.class.getName().equals(str);
        FragmentManager fragmentManager = this.f13257b;
        if (zEquals) {
            return new FragmentContainerView(context, attributeSet, fragmentManager);
        }
        if ("fragment".equals(str)) {
            String attributeValue = attributeSet.getAttributeValue(null, "class");
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.f13177a);
            if (attributeValue == null) {
                attributeValue = typedArrayObtainStyledAttributes.getString(0);
            }
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(1, -1);
            String string = typedArrayObtainStyledAttributes.getString(2);
            typedArrayObtainStyledAttributes.recycle();
            if (attributeValue != null) {
                try {
                    zIsAssignableFrom = Fragment.class.isAssignableFrom(FragmentFactory.b(context.getClassLoader(), attributeValue));
                } catch (ClassNotFoundException unused) {
                    zIsAssignableFrom = false;
                }
                if (zIsAssignableFrom) {
                    int id = view != null ? view.getId() : 0;
                    if (id == -1 && resourceId == -1 && string == null) {
                        a61.m(attributeSet.getPositionDescription(), ": Must specify unique android:id, android:tag, or have a parent with an id for ", attributeValue);
                        return null;
                    }
                    Fragment fragmentF = resourceId != -1 ? fragmentManager.F(resourceId) : null;
                    if (fragmentF == null && string != null) {
                        fragmentF = fragmentManager.G(string);
                    }
                    if (fragmentF == null && id != -1) {
                        fragmentF = fragmentManager.F(id);
                    }
                    if (fragmentF == null) {
                        fragmentF = fragmentManager.L().a(context.getClassLoader(), attributeValue);
                        fragmentF.mFromLayout = true;
                        fragmentF.mFragmentId = resourceId != 0 ? resourceId : id;
                        fragmentF.mContainerId = id;
                        fragmentF.mTag = string;
                        fragmentF.mInLayout = true;
                        fragmentF.mFragmentManager = fragmentManager;
                        FragmentHostCallback<?> fragmentHostCallback = fragmentManager.x;
                        fragmentF.mHost = fragmentHostCallback;
                        fragmentF.onInflate(fragmentHostCallback.f13255c, attributeSet, fragmentF.mSavedFragmentState);
                        fragmentStateManagerI = fragmentManager.a(fragmentF);
                        if (FragmentManager.O(2)) {
                            fragmentF.toString();
                            Integer.toHexString(resourceId);
                        }
                    } else {
                        if (fragmentF.mInLayout) {
                            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
                        }
                        fragmentF.mInLayout = true;
                        fragmentF.mFragmentManager = fragmentManager;
                        FragmentHostCallback<?> fragmentHostCallback2 = fragmentManager.x;
                        fragmentF.mHost = fragmentHostCallback2;
                        fragmentF.onInflate(fragmentHostCallback2.f13255c, attributeSet, fragmentF.mSavedFragmentState);
                        fragmentStateManagerI = fragmentManager.i(fragmentF);
                        if (FragmentManager.O(2)) {
                            fragmentF.toString();
                            Integer.toHexString(resourceId);
                        }
                    }
                    ViewGroup viewGroup = (ViewGroup) view;
                    FragmentStrictMode.Policy policy = FragmentStrictMode.f13391a;
                    FragmentTagUsageViolation fragmentTagUsageViolation = new FragmentTagUsageViolation(fragmentF, viewGroup);
                    FragmentStrictMode.c(fragmentTagUsageViolation);
                    FragmentStrictMode.Policy policyA = FragmentStrictMode.a(fragmentF);
                    if (policyA.f13392a.contains(FragmentStrictMode.Flag.DETECT_FRAGMENT_TAG_USAGE) && FragmentStrictMode.f(policyA, fragmentF.getClass(), FragmentTagUsageViolation.class)) {
                        FragmentStrictMode.b(policyA, fragmentTagUsageViolation);
                    }
                    fragmentF.mContainer = viewGroup;
                    fragmentStateManagerI.i();
                    fragmentStateManagerI.h();
                    View view2 = fragmentF.mView;
                    if (view2 == null) {
                        md.k(fc.h("Fragment ", attributeValue, " did not create a view."));
                        return null;
                    }
                    if (resourceId != 0) {
                        view2.setId(resourceId);
                    }
                    if (fragmentF.mView.getTag() == null) {
                        fragmentF.mView.setTag(string);
                    }
                    fragmentF.mView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.fragment.app.FragmentLayoutInflaterFactory.1
                        @Override // android.view.View.OnAttachStateChangeListener
                        public final void onViewAttachedToWindow(View view3) {
                            FragmentStateManager fragmentStateManager = fragmentStateManagerI;
                            Fragment fragment = fragmentStateManager.f13315c;
                            fragmentStateManager.i();
                            SpecialEffectsController.i((ViewGroup) fragment.mView.getParent(), FragmentLayoutInflaterFactory.this.f13257b).h();
                        }

                        @Override // android.view.View.OnAttachStateChangeListener
                        public final void onViewDetachedFromWindow(View view3) {
                        }
                    });
                    return fragmentF.mView;
                }
            }
        }
        return null;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
