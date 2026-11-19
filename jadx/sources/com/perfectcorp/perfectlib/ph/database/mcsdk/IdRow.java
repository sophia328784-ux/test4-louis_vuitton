package com.perfectcorp.perfectlib.ph.database.mcsdk;

import android.database.DatabaseUtils;
import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class IdRow {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final IdRow f41146f = new IdRow("", "", "", "", "");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f41147a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f41148b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f41149c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f41150e;

    public IdRow(String str, String str2, String str3, String str4, String str5) {
        Objects.requireNonNull(str, "type can't be null");
        this.f41147a = str;
        Objects.requireNonNull(str2, "skuGuid can't be null");
        this.f41148b = str2;
        Objects.requireNonNull(str3, "productId can't be null");
        this.f41149c = str3;
        Objects.requireNonNull(str4, "skuItemGuid can't be null");
        this.d = str4;
        Objects.requireNonNull(str5, "shadetId can't be null");
        this.f41150e = str5;
    }

    public final void a(StringBuilder sb) {
        sb.append('(');
        DatabaseUtils.appendEscapedSQLString(sb, this.f41147a);
        sb.append(',');
        DatabaseUtils.appendEscapedSQLString(sb, this.f41148b);
        sb.append(',');
        DatabaseUtils.appendEscapedSQLString(sb, this.f41149c);
        sb.append(',');
        DatabaseUtils.appendEscapedSQLString(sb, this.d);
        sb.append(',');
        DatabaseUtils.appendEscapedSQLString(sb, this.f41150e);
        sb.append(')');
    }

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("IdRow");
        toStringHelper.b("type", this.f41147a);
        toStringHelper.b("skuGuid", this.f41148b);
        toStringHelper.b("productId", this.f41149c);
        toStringHelper.b("skuItemGuid", this.d);
        toStringHelper.b("shadetId", this.f41150e);
        return toStringHelper.toString();
    }
}
