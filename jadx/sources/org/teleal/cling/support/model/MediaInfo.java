package org.teleal.cling.support.model;

import java.util.Map;
import org.teleal.cling.model.action.ActionArgumentValue;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes5.dex */
public class MediaInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78583a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78584b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f78585c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final UnsignedIntegerFourBytes f78586e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f78587f;
    public final StorageMedium g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final StorageMedium f78588h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final RecordMediumWriteStatus f78589i;

    /* JADX WARN: Illegal instructions before constructor call */
    public MediaInfo(Map<String, ActionArgumentValue> map) {
        RecordMediumWriteStatus recordMediumWriteStatusValueOf;
        String str = (String) map.get("CurrentURI").f78394b;
        String str2 = (String) map.get("CurrentURIMetaData").f78394b;
        String str3 = (String) map.get("NextURI").f78394b;
        String str4 = (String) map.get("NextURIMetaData").f78394b;
        UnsignedIntegerFourBytes unsignedIntegerFourBytes = (UnsignedIntegerFourBytes) map.get("NrTracks").f78394b;
        String str5 = (String) map.get("MediaDuration").f78394b;
        StorageMedium storageMediumA = StorageMedium.a((String) map.get("PlayMedium").f78394b);
        StorageMedium storageMediumA2 = StorageMedium.a((String) map.get("RecordMedium").f78394b);
        try {
            recordMediumWriteStatusValueOf = RecordMediumWriteStatus.valueOf((String) map.get("WriteStatus").f78394b);
        } catch (IllegalArgumentException unused) {
            recordMediumWriteStatusValueOf = RecordMediumWriteStatus.UNKNOWN;
        }
        this(str, str2, str3, str4, unsignedIntegerFourBytes, str5, storageMediumA, storageMediumA2, recordMediumWriteStatusValueOf);
    }

    public final String toString() {
        return "MediaInfo [currentURI=" + this.f78583a + ", currentURIMetaData=" + this.f78584b + ", nextURI=" + this.f78585c + ", nextURIMetaData=" + this.d + ", numberOfTracks=" + this.f78586e + ", mediaDuration=" + this.f78587f + ", playMedium=" + this.g + ", recordMedium=" + this.f78588h + ", writeStatus=" + this.f78589i + "]";
    }

    public MediaInfo() {
        this.f78583a = "";
        this.f78584b = "";
        this.f78585c = "NOT_IMPLEMENTED";
        this.d = "NOT_IMPLEMENTED";
        this.f78586e = new UnsignedIntegerFourBytes(0L);
        this.f78587f = "00:00:00";
        this.g = StorageMedium.NONE;
        this.f78588h = StorageMedium.NOT_IMPLEMENTED;
        this.f78589i = RecordMediumWriteStatus.NOT_IMPLEMENTED;
    }

    public MediaInfo(String str, String str2) {
        this.f78583a = "";
        this.f78584b = "";
        this.f78585c = "NOT_IMPLEMENTED";
        this.d = "NOT_IMPLEMENTED";
        this.f78586e = new UnsignedIntegerFourBytes(0L);
        this.f78587f = "00:00:00";
        this.g = StorageMedium.NONE;
        this.f78588h = StorageMedium.NOT_IMPLEMENTED;
        this.f78589i = RecordMediumWriteStatus.NOT_IMPLEMENTED;
        this.f78583a = str;
        this.f78584b = str2;
    }

    public MediaInfo(String str, String str2, UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str3, StorageMedium storageMedium) {
        this.f78583a = "";
        this.f78584b = "";
        this.f78585c = "NOT_IMPLEMENTED";
        this.d = "NOT_IMPLEMENTED";
        this.f78586e = new UnsignedIntegerFourBytes(0L);
        this.f78587f = "00:00:00";
        this.g = StorageMedium.NONE;
        this.f78588h = StorageMedium.NOT_IMPLEMENTED;
        this.f78589i = RecordMediumWriteStatus.NOT_IMPLEMENTED;
        this.f78583a = str;
        this.f78584b = str2;
        this.f78586e = unsignedIntegerFourBytes;
        this.f78587f = str3;
        this.g = storageMedium;
    }

    public MediaInfo(String str, String str2, UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str3, StorageMedium storageMedium, StorageMedium storageMedium2, RecordMediumWriteStatus recordMediumWriteStatus) {
        this.f78583a = "";
        this.f78584b = "";
        this.f78585c = "NOT_IMPLEMENTED";
        this.d = "NOT_IMPLEMENTED";
        this.f78586e = new UnsignedIntegerFourBytes(0L);
        this.f78587f = "00:00:00";
        this.g = StorageMedium.NONE;
        this.f78588h = StorageMedium.NOT_IMPLEMENTED;
        this.f78583a = str;
        this.f78584b = str2;
        this.f78586e = unsignedIntegerFourBytes;
        this.f78587f = str3;
        this.g = storageMedium;
        this.f78588h = storageMedium2;
        this.f78589i = recordMediumWriteStatus;
    }

    public MediaInfo(String str, String str2, String str3, String str4, UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str5, StorageMedium storageMedium) {
        this.f78583a = "";
        this.f78584b = "";
        this.f78585c = "NOT_IMPLEMENTED";
        this.d = "NOT_IMPLEMENTED";
        this.f78586e = new UnsignedIntegerFourBytes(0L);
        this.f78587f = "00:00:00";
        this.g = StorageMedium.NONE;
        this.f78588h = StorageMedium.NOT_IMPLEMENTED;
        this.f78589i = RecordMediumWriteStatus.NOT_IMPLEMENTED;
        this.f78583a = str;
        this.f78584b = str2;
        this.f78585c = str3;
        this.d = str4;
        this.f78586e = unsignedIntegerFourBytes;
        this.f78587f = str5;
        this.g = storageMedium;
    }

    public MediaInfo(String str, String str2, String str3, String str4, UnsignedIntegerFourBytes unsignedIntegerFourBytes, String str5, StorageMedium storageMedium, StorageMedium storageMedium2, RecordMediumWriteStatus recordMediumWriteStatus) {
        this.f78583a = "";
        this.f78584b = "";
        this.f78585c = "NOT_IMPLEMENTED";
        this.d = "NOT_IMPLEMENTED";
        this.f78586e = new UnsignedIntegerFourBytes(0L);
        this.f78587f = "00:00:00";
        this.g = StorageMedium.NONE;
        this.f78588h = StorageMedium.NOT_IMPLEMENTED;
        this.f78583a = str;
        this.f78584b = str2;
        this.f78585c = str3;
        this.d = str4;
        this.f78586e = unsignedIntegerFourBytes;
        this.f78587f = str5;
        this.g = storageMedium;
        this.f78588h = storageMedium2;
        this.f78589i = recordMediumWriteStatus;
    }
}
