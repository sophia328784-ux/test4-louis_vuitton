package com.vuitton.foundation.model.domain.model.cart;

import kotlin.Metadata;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;", "", "None", "Blank", "Message", "Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Blank;", "Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Message;", "Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$None;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface GiftOption {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Blank;", "Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Blank implements GiftOption {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Blank f66976a = new Blank();
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Message;", "Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;", "", "message", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Message implements GiftOption {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66977a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66978b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f66979c;

        public Message(String str) {
            str.getClass();
            this.f66977a = str;
            this.f66978b = new Regex("\\s+").replace(str, " ");
            this.f66979c = StringsKt.a0(str).toString();
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$None;", "Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class None implements GiftOption {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final None f66980a = new None();
    }
}
