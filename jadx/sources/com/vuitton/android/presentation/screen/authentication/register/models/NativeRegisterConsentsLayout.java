package com.vuitton.android.presentation.screen.authentication.register.models;

import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\bB'\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterConsentsLayout;", "", "", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;", "majorConsents", "minorConsents", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class NativeRegisterConsentsLayout {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f53948c = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f53949a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f53950b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterConsentsLayout$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public NativeRegisterConsentsLayout(List list, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? EmptyList.f71768b : list, (i2 & 2) != 0 ? EmptyList.f71768b : list2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NativeRegisterConsentsLayout)) {
            return false;
        }
        NativeRegisterConsentsLayout nativeRegisterConsentsLayout = (NativeRegisterConsentsLayout) obj;
        return Intrinsics.c(this.f53949a, nativeRegisterConsentsLayout.f53949a) && Intrinsics.c(this.f53950b, nativeRegisterConsentsLayout.f53950b);
    }

    public final int hashCode() {
        return this.f53950b.hashCode() + (this.f53949a.hashCode() * 31);
    }

    public final String toString() {
        return "NativeRegisterConsentsLayout(majorConsents=" + this.f53949a + ", minorConsents=" + this.f53950b + ")";
    }

    public NativeRegisterConsentsLayout(List<? extends FormSectionTypeUiModel> list, List<? extends FormSectionTypeUiModel> list2) {
        list.getClass();
        list2.getClass();
        this.f53949a = list;
        this.f53950b = list2;
    }

    public NativeRegisterConsentsLayout() {
        this(null, null, 3, null);
    }
}
