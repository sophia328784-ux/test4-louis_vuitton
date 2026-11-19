package com.sightcall.universal.agent;

import com.sightcall.pratik.utils.Utils;
import com.sightcall.universal.agent.registration.RegistrationResponse;
import com.sightcall.universal.api.Environment;
import com.sightcall.universal.api.JsonApi;
import com.squareup.moshi.Json;
import java.util.Date;

/* JADX INFO: loaded from: classes3.dex */
public class Agent {

    @Json(name = "annotations-url")
    private String annotationsUrl;

    @Json(name = "appId")
    private String appId;

    @Json(name = "chatTranscript")
    private boolean chatTranscript;

    @Json(name = "deadPartyTimeout")
    private int deadPartyTimeout;

    @Json(name = "email")
    private String email;

    @Json(name = "env")
    private Environment env;

    @Json(name = "fcmToken")
    private String fcmToken;

    @Json(name = "hap")
    private String hap;

    @Json(name = "language")
    private String language;

    @Json(name = "connection")
    private Date lastConnectionDate;

    @Json(name = "login")
    private String login;

    @Json(name = "name")
    private String name;

    @Json(name = "phone")
    private String phone;

    @Json(name = "recording")
    private boolean recording;

    @Json(name = "refreshToken")
    private String refreshToken;

    @Json(name = "registration")
    private Date registrationDate;

    @Json(name = "requireConsent")
    private boolean requireConsent;

    @Json(name = "token")
    private String token;

    public static Agent create(RegistrationResponse registrationResponse, Environment environment) {
        Agent agent = new Agent();
        agent.env = environment;
        agent.token = registrationResponse.accessToken();
        agent.refreshToken = registrationResponse.refreshToken();
        return agent;
    }

    public String annotationsUrl() {
        return this.annotationsUrl;
    }

    public String appId() {
        return this.appId;
    }

    public boolean chatTranscript() {
        return this.chatTranscript;
    }

    public int deadPartyTimeout() {
        return this.deadPartyTimeout;
    }

    public String email() {
        return this.email;
    }

    public Environment environment() {
        Environment environment = this.env;
        return environment != null ? environment : Environment.PROD;
    }

    public String fcmToken() {
        return this.fcmToken;
    }

    public String hap() {
        return this.hap;
    }

    public String language() {
        return this.language;
    }

    public Date lastConnectionDate() {
        return this.lastConnectionDate;
    }

    public String login() {
        return this.login;
    }

    public String name() {
        return this.name;
    }

    public String phone() {
        return this.phone;
    }

    public boolean recording() {
        return this.recording;
    }

    public String refreshToken() {
        return this.refreshToken;
    }

    public Date registrationDate() {
        return this.registrationDate;
    }

    public void requireConsent(Boolean bool) {
        this.requireConsent = Boolean.TRUE.equals(bool);
    }

    public String token() {
        return this.token;
    }

    public Agent update(Identity identity) {
        Identity.Attributes attributes = identity.attributes;
        this.login = attributes.login;
        this.name = attributes.displayName;
        this.language = attributes.language;
        this.email = attributes.email;
        this.phone = attributes.phoneNumber;
        this.fcmToken = attributes.fcmToken;
        this.registrationDate = attributes.registeredAt;
        this.lastConnectionDate = attributes.connectedAt;
        Boolean bool = Boolean.TRUE;
        this.requireConsent = bool.equals(attributes.requireConsent);
        this.recording = bool.equals(attributes.recording);
        return this;
    }

    public Agent updateTokens(RegistrationResponse registrationResponse) {
        this.token = registrationResponse.accessToken();
        this.refreshToken = registrationResponse.refreshToken();
        return this;
    }

    public void fcmToken(String str) {
        this.fcmToken = str;
    }

    public boolean requireConsent() {
        return this.requireConsent;
    }

    public Agent update(JsonApi.Included[] includedArr) {
        if (includedArr != null) {
            for (JsonApi.Included included : includedArr) {
                if (included instanceof Provider) {
                    update((Provider) included);
                    return this;
                }
            }
        }
        return this;
    }

    private void update(Provider provider) {
        Provider.Attributes attributes = provider.attributes;
        this.annotationsUrl = attributes.annotationsUrl;
        this.appId = attributes.appId;
        this.hap = Utils.INSTANCE.extractHap(attributes.rtccEnv, attributes.hapPath);
        Provider.Attributes attributes2 = provider.attributes;
        this.chatTranscript = attributes2.chatTranscript;
        this.deadPartyTimeout = attributes2.deadpartyTimeout;
    }
}
