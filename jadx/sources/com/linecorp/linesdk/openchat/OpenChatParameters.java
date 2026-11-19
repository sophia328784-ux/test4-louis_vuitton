package com.linecorp.linesdk.openchat;

import defpackage.md;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/linecorp/linesdk/openchat/OpenChatParameters;", "", "", "name", "description", "creatorDisplayName", "Lcom/linecorp/linesdk/openchat/OpenChatCategory;", "category", "", "isSearchable", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/linecorp/linesdk/openchat/OpenChatCategory;Z)V", "line-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class OpenChatParameters {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f36256a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f36257b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f36258c;
    public final OpenChatCategory d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f36259e;

    public OpenChatParameters(String str, String str2, String str3, OpenChatCategory openChatCategory, boolean z) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        openChatCategory.getClass();
        this.f36256a = str;
        this.f36257b = str2;
        this.f36258c = str3;
        this.d = openChatCategory;
        this.f36259e = z;
        if (str.length() <= 0 || str.length() > 50) {
            md.n("String size needs to be less or equal to 50");
            throw null;
        }
        if (str2.length() > 200) {
            md.n("String size needs to be less or equal to 200");
            throw null;
        }
        if (str3.length() <= 0 || str3.length() > 50) {
            md.n("String size needs to be less or equal to 50");
            throw null;
        }
    }

    public /* synthetic */ OpenChatParameters(String str, String str2, String str3, OpenChatCategory openChatCategory, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i2 & 8) != 0 ? OpenChatCategory.Game : openChatCategory, (i2 & 16) != 0 ? true : z);
    }
}
