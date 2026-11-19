package com.sightcall.universal.model;

import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/sightcall/universal/model/NewUrlParser;", "Lcom/sightcall/universal/model/UrlParser$Factory;", "hash", "", "<init>", "(Ljava/lang/String;)V", "pin", "getPin", "()Ljava/lang/String;", "invitation", "getInvitation", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NewUrlParser implements UrlParser.Factory {
    private final String invitation;
    private final String pin;

    public NewUrlParser(String str) {
        str.getClass();
        this.pin = StringsKt.N(str, 'p', true) ? str : null;
        this.invitation = StringsKt.N(str, 'i', true) ? str : null;
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
