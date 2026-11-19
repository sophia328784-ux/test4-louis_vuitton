package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look;

/* JADX INFO: loaded from: classes3.dex */
public final class GetTutorialByGuidResponse$TutorialData {
    public final String expiredDate;
    public final String guid;
    public final boolean isDownloaded;
    public final long lastModified;
    public final GetTutorialByGuidResponse$Payload payload;
    public final String type;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f41512a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f41513b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public GetTutorialByGuidResponse$Payload f41514c;
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f41515e = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f41516f = false;
    }

    public GetTutorialByGuidResponse$TutorialData(Builder builder) {
        this.guid = builder.f41512a;
        this.type = builder.f41513b;
        this.payload = builder.f41514c;
        this.expiredDate = builder.d;
        this.lastModified = builder.f41515e;
        this.isDownloaded = builder.f41516f;
    }
}
