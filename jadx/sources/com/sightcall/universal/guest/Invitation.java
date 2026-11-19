package com.sightcall.universal.guest;

import android.text.TextUtils;
import com.batch.android.s.b;
import com.squareup.moshi.Json;

/* JADX INFO: loaded from: classes3.dex */
public class Invitation {

    @Json(name = "conferences")
    private Conference[] conferences;

    @Json(name = "conferenceInvitation")
    private Data data;

    @Json(name = "members")
    private Member[] members;

    public static class Conference {

        @Json(name = "case_id")
        String caseReportId;

        @Json(name = "expired")
        String expired;

        @Json(name = "host")
        int hostId;

        @Json(name = b.a.f24015b)
        int id;

        @Json(name = "mpi")
        String mpi;
    }

    public static class Data {

        @Json(name = "conference")
        int conferenceId;

        @Json(name = b.a.f24015b)
        int id;

        @Json(name = "suffix")
        String suffix;

        private Data() {
        }
    }

    public static class Member {

        @Json(name = b.a.f24015b)
        int id;

        @Json(name = "login")
        String login;

        private Member() {
        }
    }

    public String caseReportId() {
        Conference conference = conference();
        if (conference == null) {
            return null;
        }
        return conference.caseReportId;
    }

    public Conference conference() {
        int i2 = this.data.conferenceId;
        Conference[] conferenceArr = this.conferences;
        if (conferenceArr != null && conferenceArr.length != 0) {
            for (Conference conference : conferenceArr) {
                if (conference.id == i2) {
                    return conference;
                }
            }
        }
        return null;
    }

    public boolean isExpired() {
        Conference conference = conference();
        return conference == null || !TextUtils.isEmpty(conference.expired);
    }

    public String mpi() {
        Conference conference = conference();
        if (conference != null) {
            return conference.mpi;
        }
        return null;
    }

    public String suffix() {
        return this.data.suffix;
    }

    public String uid() {
        Conference conference = conference();
        if (conference == null) {
            return null;
        }
        int i2 = conference.hostId;
        for (Member member : this.members) {
            if (member.id == i2) {
                return member.login;
            }
        }
        return null;
    }
}
