package com.dynatrace.agent.userinteraction.model;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.dynatrace.agent.userinteraction.util.UserInteractionMaskingValidator;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionNativeGenerator;", "", "Lcom/dynatrace/agent/userinteraction/util/UserInteractionMaskingValidator;", "maskingValidator", "<init>", "(Lcom/dynatrace/agent/userinteraction/util/UserInteractionMaskingValidator;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TouchUserInteractionNativeGenerator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UserInteractionMaskingValidator f27188a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionNativeGenerator$Companion;", "", "", "MASKED_LABEL", "Ljava/lang/String;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public TouchUserInteractionNativeGenerator(UserInteractionMaskingValidator userInteractionMaskingValidator) {
        userInteractionMaskingValidator.getClass();
        this.f27188a = userInteractionMaskingValidator;
    }

    public final String a(View view) {
        if (view.getParent() == null || !(view.getParent() instanceof ViewGroup)) {
            return view.getClass().getSimpleName();
        }
        String strC = c(view);
        if (strC.length() == 0) {
            Object parent = view.getParent();
            parent.getClass();
            return a((View) parent);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(strC);
        sb.append('[');
        ViewParent parent2 = view.getParent();
        parent2.getClass();
        sb.append(((ViewGroup) parent2).indexOfChild(view));
        sb.append(']');
        String string = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        Object parent3 = view.getParent();
        parent3.getClass();
        sb2.append(a((View) parent3));
        sb2.append('/');
        sb2.append(string);
        return sb2.toString();
    }

    /* JADX WARN: Code duplicated, block: B:42:0x008a  */
    /* JADX WARN: Code duplicated, block: B:54:0x00c2  */
    public final UiElement b(View view) {
        UiElement.Name name;
        String strK;
        boolean z;
        TextView textView;
        CharSequence text;
        this.f27188a.getClass();
        view.getClass();
        if (Intrinsics.c(view.getTag(), "data-dt-mask") || Intrinsics.c(view.getTag(), "data-dtrum-mask") || UserInteractionMaskingValidator.a(view)) {
            name = new UiElement.Name("***", UiElement.Name.Origin.MASKED);
        } else {
            boolean z2 = view instanceof ViewGroup;
            ViewGroup viewGroup = z2 ? (ViewGroup) view : null;
            boolean z3 = viewGroup != null && viewGroup.getChildCount() == 0;
            if (!view.getClass().getName().equals("com.google.android.material.textfield.TextInputLayout") || z3) {
                z = false;
            } else {
                ViewGroup viewGroup2 = z2 ? (ViewGroup) view : null;
                View childAt = viewGroup2 != null ? viewGroup2.getChildAt(0) : null;
                FrameLayout frameLayout = childAt instanceof FrameLayout ? (FrameLayout) childAt : null;
                if (frameLayout != null) {
                    int childCount = frameLayout.getChildCount();
                    z = false;
                    for (int i2 = 0; i2 < childCount; i2++) {
                        View childAt2 = frameLayout.getChildAt(i2);
                        childAt2.getClass();
                        z = UserInteractionMaskingValidator.a(childAt2) || z;
                    }
                } else {
                    z = false;
                }
            }
            if (z) {
                name = new UiElement.Name("***", UiElement.Name.Origin.MASKED);
            } else {
                name = (!(view instanceof TextView) || (text = (textView = (TextView) view).getText()) == null || StringsKt.w(text)) ? new UiElement.Name(view.getClass().getSimpleName(), UiElement.Name.Origin.COMPONENT) : new UiElement.Name(textView.getText().toString(), UiElement.Name.Origin.TEXT);
            }
        }
        List listO = CollectionsKt.O(view.getClass().getSimpleName());
        String strA = a(view);
        ViewParent parent = view.getParent();
        ViewGroup viewGroup3 = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        Integer numValueOf = viewGroup3 != null ? Integer.valueOf(viewGroup3.indexOfChild(view)) : null;
        String strC = c(view);
        if (strC.length() == 0 || numValueOf == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(strA);
            sb.append('/');
            sb.append(view.getClass().getSimpleName());
            sb.append('[');
            strK = tr.k(sb, numValueOf != null ? numValueOf.intValue() : 0, ']');
        } else {
            strA.getClass();
            int iY = StringsKt.y(0, 6, strA, "/");
            if (iY != -1) {
                strA = strA.substring(0, iY);
            }
            strK = strA + '/' + strC + '[' + numValueOf + ']';
        }
        return new UiElement(name, listO, strK);
    }

    public final String c(View view) {
        try {
            String resourceName = view.getResources().getResourceName(view.getId());
            resourceName.getClass();
            return StringsKt.k(resourceName, ":id/", false) ? StringsKt.Q(resourceName, ":id/", resourceName) : resourceName;
        } catch (Resources.NotFoundException unused) {
            if (view.getContentDescription() != null) {
                return view.getContentDescription().toString();
            }
            if (view.getTag() != null) {
                this.f27188a.getClass();
                if (!Intrinsics.c(view.getTag(), "data-dt-mask") && !Intrinsics.c(view.getTag(), "data-dtrum-mask")) {
                    return view.getTag().toString();
                }
            }
            return view.getClass().getSimpleName();
        }
    }
}
