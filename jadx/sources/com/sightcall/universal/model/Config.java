package com.sightcall.universal.model;

import android.net.Uri;
import com.sightcall.httpclient.AuthorizationToken;
import com.sightcall.universal.Universal;
import com.sightcall.universal.agent.Agent;
import com.sightcall.universal.agent.Code;
import com.sightcall.universal.api.Environment;
import com.sightcall.universal.fcm.messages.GuestReady;

/* JADX INFO: loaded from: classes3.dex */
public class Config {
    private static final int DEFAULT_DEAD_PARTY_TIMEOUT = 60;
    private Long acdMask;
    private Long acdValue;
    private String appId;
    public AuthorizationToken authorizationToken;
    private String callNotStartedUrl;
    private String calleeId;
    private String caseReportId;
    private Code code;
    private int deadPartyTimeout;
    private String displayName;
    private String displayNameMode;
    private GuestReady guestReady;
    private String hap;
    private String hash;
    private boolean ignoreConsent;
    private String invitation;
    private String mpi;
    private String pin;
    private String reference;
    private String referrer;
    private Boolean reportChatContent;
    private String suffix;
    private String uid;
    private Uri uri;
    private String urlAnnotation;
    private Session.Role role = Session.Role.GUEST;
    private Environment environment = Environment.PROD;

    private Agent agentIfRoleIsHost() {
        if (this.role == Session.Role.HOST) {
            return Universal.agent().get();
        }
        return null;
    }

    public long acdMask() {
        return this.acdMask.longValue();
    }

    public long acdValue() {
        return this.acdValue.longValue();
    }

    public String appId() {
        Agent agentAgentIfRoleIsHost = agentIfRoleIsHost();
        return agentAgentIfRoleIsHost != null ? agentAgentIfRoleIsHost.appId() : this.appId;
    }

    public String callNotStartedUrl() {
        return this.callNotStartedUrl;
    }

    public String calleeId() {
        return this.calleeId;
    }

    public String caseReportId() {
        GuestReady guestReady = guestReady();
        return guestReady != null ? guestReady.caseReportId() : this.caseReportId;
    }

    public Code code() {
        return this.code;
    }

    public int deadPartyTimeout() {
        Agent agentAgentIfRoleIsHost = agentIfRoleIsHost();
        int iDeadPartyTimeout = agentAgentIfRoleIsHost != null ? agentAgentIfRoleIsHost.deadPartyTimeout() : this.deadPartyTimeout;
        if (iDeadPartyTimeout > 0) {
            return iDeadPartyTimeout;
        }
        return 60;
    }

    public String displayName() {
        return this.displayName;
    }

    public String displayNameMode() {
        return this.displayNameMode;
    }

    public Environment environment() {
        Agent agentAgentIfRoleIsHost = agentIfRoleIsHost();
        return agentAgentIfRoleIsHost != null ? agentAgentIfRoleIsHost.environment() : this.environment;
    }

    public GuestReady guestReady() {
        return this.guestReady;
    }

    public String hap() {
        Agent agentAgentIfRoleIsHost = agentIfRoleIsHost();
        return agentAgentIfRoleIsHost != null ? agentAgentIfRoleIsHost.hap() : this.hap;
    }

    public String hash() {
        return this.hash;
    }

    public boolean ignoreConsent() {
        return this.ignoreConsent;
    }

    public String invitation() {
        return this.invitation;
    }

    public String mpi() {
        return this.mpi;
    }

    public String pin() {
        return this.pin;
    }

    public String reference() {
        Code code = code();
        return code != null ? code.reference() : this.reference;
    }

    public Boolean reportChatContent() {
        Agent agentAgentIfRoleIsHost = agentIfRoleIsHost();
        return agentAgentIfRoleIsHost != null ? Boolean.valueOf(agentAgentIfRoleIsHost.chatTranscript()) : this.reportChatContent;
    }

    public Session.Role role() {
        return this.role;
    }

    public String suffix() {
        return this.suffix;
    }

    public String uid() {
        return this.uid;
    }

    public Config uri(Uri uri) {
        this.uri = uri;
        UrlParser urlParser = new UrlParser(uri);
        this.hash = urlParser.getHash();
        this.pin = urlParser.getPin();
        this.uid = urlParser.getUid();
        this.invitation = urlParser.getInvitation();
        return this;
    }

    public String urlAnnotation() {
        return this.urlAnnotation;
    }

    public Config callNotStartedUrl(String str) {
        this.callNotStartedUrl = str;
        return this;
    }

    public Config calleeId(String str) {
        this.calleeId = str;
        return this;
    }

    public Config code(Code code) {
        this.code = code;
        return this;
    }

    public Config displayName(String str) {
        this.displayName = str;
        return this;
    }

    public Config displayNameMode(String str) {
        this.displayNameMode = str;
        return this;
    }

    public Config guestReady(GuestReady guestReady) {
        this.guestReady = guestReady;
        return this;
    }

    public Config hash(String str) {
        this.hash = str;
        return this;
    }

    public Config ignoreConsent(boolean z) {
        this.ignoreConsent = z;
        return this;
    }

    public Config invitation(String str) {
        this.invitation = str;
        return this;
    }

    public Config mpi(String str) {
        this.mpi = str;
        return this;
    }

    public Config pin(String str) {
        this.pin = str;
        return this;
    }

    public Config role(Session.Role role) {
        this.role = role;
        return this;
    }

    public Config suffix(String str) {
        this.suffix = str;
        return this;
    }

    public Config uid(String str) {
        this.uid = str;
        return this;
    }

    public Config urlAnnotation(String str) {
        this.urlAnnotation = str;
        return this;
    }

    public Config acdMask(Long l) {
        this.acdMask = l;
        return this;
    }

    public Config acdValue(Long l) {
        this.acdValue = l;
        return this;
    }

    public Config appId(String str) {
        this.appId = str;
        return this;
    }

    public Config caseReportId(String str) {
        this.caseReportId = str;
        return this;
    }

    public Config environment(Environment environment) {
        this.environment = environment;
        return this;
    }

    public Config hap(String str) {
        this.hap = str;
        return this;
    }

    public Config reference(String str) {
        this.reference = str;
        return this;
    }

    public Config reportChatContent(Boolean bool) {
        this.reportChatContent = bool;
        return this;
    }

    public Config deadPartyTimeout(int i2) {
        this.deadPartyTimeout = i2;
        return this;
    }

    public Uri uri() {
        return this.uri;
    }
}
