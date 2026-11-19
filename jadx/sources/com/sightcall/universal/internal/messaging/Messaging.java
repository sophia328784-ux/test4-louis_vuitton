package com.sightcall.universal.internal.messaging;

import android.text.TextUtils;
import com.sightcall.common.DataChannelAction;
import com.sightcall.universal.internal.model.DataChannelParser;
import com.sightcall.universal.internal.report.di.CaseReportComponentKt;
import com.sightcall.universal.model.Session;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.User;

/* JADX INFO: loaded from: classes3.dex */
public final class Messaging {
    private static final WeakHashMap<Call, Messaging> cache = new WeakHashMap<>();
    private final List<Message> messages = new ArrayList(20);
    private String pendingMessage;
    private final Rtcc rtcc;

    private Messaging(Rtcc rtcc) {
        this.rtcc = rtcc;
    }

    public static String findCurrentUserId() {
        User user = Rtcc.instance().user();
        if (user instanceof User.Internal) {
            return user.extras().getString("uid");
        }
        if (user instanceof User.External) {
            StringBuilder sb = new StringBuilder("_");
            User.External external = (User.External) user;
            sb.append(external.uid());
            sb.append("_");
            sb.append(external.suffix());
            return sb.toString();
        }
        if (!(user instanceof User.SixDigits)) {
            if (user != null) {
                return user.extras().getString("uid");
            }
            return null;
        }
        StringBuilder sb2 = new StringBuilder("_");
        User.SixDigits sixDigits = (User.SixDigits) user;
        sb2.append(sixDigits.pin());
        sb2.append("_");
        sb2.append(sixDigits.suffix());
        return sb2.toString();
    }

    public static synchronized Messaging from(Rtcc rtcc, Call call) {
        try {
            if (call == null) {
                return new Messaging(rtcc);
            }
            WeakHashMap<Call, Messaging> weakHashMap = cache;
            Messaging messaging = weakHashMap.get(call);
            if (messaging != null) {
                return messaging;
            }
            Messaging messaging2 = new Messaging(rtcc);
            weakHashMap.put(call, messaging2);
            return messaging2;
        } catch (Throwable th) {
            throw th;
        }
    }

    public List<Message> get() {
        return new ArrayList(this.messages);
    }

    public String getPendingMessage() {
        return this.pendingMessage;
    }

    public boolean isEmpty() {
        return this.messages.isEmpty();
    }

    public void onMessageReceived(Message.Incoming incoming, Session session) {
        this.messages.add(incoming);
        CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onMessageReceived(session, incoming);
        Rtcc.instance().bus().post(incoming);
    }

    public Message.Outgoing send(String str, Session session) {
        String str2;
        if (session.config.role() == Session.Role.GUEST) {
            str2 = "guest";
        } else {
            str2 = session.config.role() == Session.Role.ATTENDEE ? "attendee" : "";
        }
        Message.Outgoing outgoingBuild = session.config.displayName() != null ? Message.newOutgoingMessage().uid(session.config.displayName()).content(str).role(str2).build() : Message.newOutgoingMessage().uid(session.config.displayName()).content(str).role(str2).build();
        this.messages.add(outgoingBuild);
        String json = DataChannelParser.Messaging.toJson(outgoingBuild);
        outgoingBuild.success(!TextUtils.isEmpty(json) && DataChannelAction.MESSAGING.send(json));
        Rtcc rtcc = this.rtcc;
        if (rtcc != null) {
            rtcc.bus().post(outgoingBuild);
        }
        CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onMessageSent(session, outgoingBuild);
        return outgoingBuild;
    }

    public void setPending(String str) {
        this.pendingMessage = str;
    }
}
