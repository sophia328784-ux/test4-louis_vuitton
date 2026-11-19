package com.vuitton.foundation.model.domain.model.account.orders;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/orders/Channel;", "", "RETAIL", "WEB", "CONTACT_CENTER", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class Channel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Channel[] $VALUES;
    public static final Channel CONTACT_CENTER;
    public static final Channel RETAIL;
    public static final Channel WEB;

    static {
        Channel channel = new Channel("RETAIL", 0);
        RETAIL = channel;
        Channel channel2 = new Channel("WEB", 1);
        WEB = channel2;
        Channel channel3 = new Channel("CONTACT_CENTER", 2);
        CONTACT_CENTER = channel3;
        Channel[] channelArr = {channel, channel2, channel3};
        $VALUES = channelArr;
        $ENTRIES = EnumEntriesKt.a(channelArr);
    }

    public static Channel valueOf(String str) {
        return (Channel) Enum.valueOf(Channel.class, str);
    }

    public static Channel[] values() {
        return (Channel[]) $VALUES.clone();
    }
}
