package com.vuitton.android.presentation.screen.account.editavatar.models;

import com.batch.android.s.b;
import defpackage.a;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\u000bB5\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;", "", "", b.a.f24015b, "imageUrl", "altText", "", "hasInitials", "isSelected", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AvatarItemUiModel {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Companion f52325f = new Companion(null);
    public static final AvatarItemUiModel g = new AvatarItemUiModel("default", "", null, false, false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f52326a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f52327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f52328c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f52329e;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public AvatarItemUiModel(String str, String str2, String str3, boolean z, boolean z2) {
        str.getClass();
        str2.getClass();
        this.f52326a = str;
        this.f52327b = str2;
        this.f52328c = str3;
        this.d = z;
        this.f52329e = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AvatarItemUiModel)) {
            return false;
        }
        AvatarItemUiModel avatarItemUiModel = (AvatarItemUiModel) obj;
        return Intrinsics.c(this.f52326a, avatarItemUiModel.f52326a) && Intrinsics.c(this.f52327b, avatarItemUiModel.f52327b) && Intrinsics.c(this.f52328c, avatarItemUiModel.f52328c) && this.d == avatarItemUiModel.d && this.f52329e == avatarItemUiModel.f52329e;
    }

    public final int hashCode() {
        int iB = fc.b(this.f52326a.hashCode() * 31, 31, this.f52327b);
        String str = this.f52328c;
        return Boolean.hashCode(this.f52329e) + o60.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("AvatarItemUiModel(id=", this.f52326a, ", imageUrl=", this.f52327b, ", altText=");
        pq0.A(this.f52328c, ", hasInitials=", ", isSelected=", sbS, this.d);
        return a.p(sbS, this.f52329e, ")");
    }

    public /* synthetic */ AvatarItemUiModel(String str, String str2, String str3, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : str3, z, (i2 & 16) != 0 ? false : z2);
    }
}
