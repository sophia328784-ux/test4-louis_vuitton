package com.sightcall.universal.model;

import android.net.Uri;
import com.sightcall.pratik.extensions.UriExtensionsKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\n\u001a\u0004\u0018\u00010\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\f"}, d2 = {"Lcom/sightcall/universal/model/OldUrlParser;", "Lcom/sightcall/universal/model/UrlParser$Factory;", "uri", "Landroid/net/Uri;", "<init>", "(Landroid/net/Uri;)V", "pin", "", "getPin", "()Ljava/lang/String;", "invitation", "getInvitation", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class OldUrlParser implements UrlParser.Factory {
    private final String invitation;
    private final String pin;

    public OldUrlParser(Uri uri) {
        uri.getClass();
        this.pin = UriExtensionsKt.getPinCode(uri);
        this.invitation = UriExtensionsKt.getInvitation(uri);
    }

    @Override // com.sightcall.universal.model.UrlParser.Factory
    public String getInvitation() {
        return this.invitation;
    }

    @Override // com.sightcall.universal.model.UrlParser.Factory
    public String getPin() {
        return this.pin;
    }
}
