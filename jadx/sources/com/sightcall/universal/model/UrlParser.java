package com.sightcall.universal.model;

import android.net.Uri;
import com.sightcall.pratik.extensions.UriExtensionsKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\n\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\tR\u0013\u0010\f\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\tR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u00078F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\tR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/sightcall/universal/model/UrlParser;", "", "uri", "Landroid/net/Uri;", "<init>", "(Landroid/net/Uri;)V", "hash", "", "getHash", "()Ljava/lang/String;", "pin", "getPin", "uid", "getUid", "invitation", "getInvitation", "parser", "Lcom/sightcall/universal/model/UrlParser$Factory;", "Factory", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class UrlParser {
    private final String hash;
    private final Factory parser;
    private final String uid;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/universal/model/UrlParser$Factory;", "", "pin", "", "getPin", "()Ljava/lang/String;", "invitation", "getInvitation", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Factory {
        String getInvitation();

        String getPin();
    }

    public UrlParser(Uri uri) {
        uri.getClass();
        String hash = UriExtensionsKt.getHash(uri);
        this.hash = hash;
        this.uid = UriExtensionsKt.getHash(uri);
        this.parser = (hash == null || hash.length() != 10) ? new OldUrlParser(uri) : new NewUrlParser(hash);
    }

    public final String getHash() {
        return this.hash;
    }

    public final String getInvitation() {
        return this.parser.getInvitation();
    }

    public final String getPin() {
        return this.parser.getPin();
    }

    public final String getUid() {
        return this.uid;
    }
}
