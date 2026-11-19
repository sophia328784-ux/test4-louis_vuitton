package com.vuitton.android.presentation.screen.authentication.common.models;

import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/common/models/NativeAuthenticationTitle;", "", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "title", "subtitle", "", "automationTagTitle", "automationTagSubtitle", "<init>", "(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class NativeAuthenticationTitle {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StringResourceUiModel f53482a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StringResourceUiModel f53483b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f53484c;
    public final String d;

    public NativeAuthenticationTitle(StringResourceUiModel stringResourceUiModel, StringResourceUiModel stringResourceUiModel2, String str, String str2) {
        stringResourceUiModel.getClass();
        stringResourceUiModel2.getClass();
        str.getClass();
        str2.getClass();
        this.f53482a = stringResourceUiModel;
        this.f53483b = stringResourceUiModel2;
        this.f53484c = str;
        this.d = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NativeAuthenticationTitle)) {
            return false;
        }
        NativeAuthenticationTitle nativeAuthenticationTitle = (NativeAuthenticationTitle) obj;
        return Intrinsics.c(this.f53482a, nativeAuthenticationTitle.f53482a) && Intrinsics.c(this.f53483b, nativeAuthenticationTitle.f53483b) && Intrinsics.c(this.f53484c, nativeAuthenticationTitle.f53484c) && Intrinsics.c(this.d, nativeAuthenticationTitle.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + fc.b((this.f53483b.hashCode() + (this.f53482a.hashCode() * 31)) * 31, 31, this.f53484c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NativeAuthenticationTitle(title=");
        sb.append(this.f53482a);
        sb.append(", subtitle=");
        sb.append(this.f53483b);
        sb.append(", automationTagTitle=");
        return tr.l(sb, this.f53484c, ", automationTagSubtitle=", this.d, ")");
    }
}
