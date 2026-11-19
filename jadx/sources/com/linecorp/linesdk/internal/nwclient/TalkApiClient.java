package com.linecorp.linesdk.internal.nwclient;

import android.content.Context;
import android.net.Uri;
import com.linecorp.linesdk.GetFriendsResponse;
import com.linecorp.linesdk.GetGroupsResponse;
import com.linecorp.linesdk.LineFriendProfile;
import com.linecorp.linesdk.LineFriendshipStatus;
import com.linecorp.linesdk.LineGroup;
import com.linecorp.linesdk.LineProfile;
import com.linecorp.linesdk.SendMessageResponse;
import com.linecorp.linesdk.internal.InternalAccessToken;
import com.linecorp.linesdk.internal.nwclient.core.ChannelServiceHttpClient;
import com.linecorp.linesdk.internal.nwclient.core.ResponseDataParser;
import com.linecorp.linesdk.openchat.MembershipStatus;
import com.linecorp.linesdk.openchat.OpenChatRoomInfo;
import com.linecorp.linesdk.openchat.OpenChatRoomJoinType;
import com.linecorp.linesdk.openchat.OpenChatRoomStatus;
import com.linecorp.linesdk.utils.UriUtils;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sightcall.universal.permission.PermissionsActivity;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
public class TalkApiClient {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ResponseDataParser f36228c = new ProfileParser();
    public static final ResponseDataParser d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ResponseDataParser f36229e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ResponseDataParser f36230f = null;
    public static final ResponseDataParser g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ResponseDataParser f36231h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final ResponseDataParser f36232i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final ResponseDataParser f36233j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final ResponseDataParser f36234k = null;
    public static final ResponseDataParser l = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f36235a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ChannelServiceHttpClient f36236b;

    public static class FriendsParser extends JsonToObjectBaseResponseParser<GetFriendsResponse> {
        @Override // com.linecorp.linesdk.internal.nwclient.JsonToObjectBaseResponseParser
        public final Object b(JSONObject jSONObject) throws JSONException {
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = jSONObject.getJSONArray("friends");
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                LineProfile lineProfileC = ProfileParser.c(jSONObject2);
                arrayList.add(new LineFriendProfile(lineProfileC.f36096b, lineProfileC.f36097c, lineProfileC.d, lineProfileC.f36098e, jSONObject2.optString("displayNameOverridden", null)));
            }
            return new GetFriendsResponse(arrayList, jSONObject.optString("pageToken", null));
        }
    }

    public static class FriendshipStatusParser extends JsonToObjectBaseResponseParser<LineFriendshipStatus> {
        @Override // com.linecorp.linesdk.internal.nwclient.JsonToObjectBaseResponseParser
        public final Object b(JSONObject jSONObject) {
            return new LineFriendshipStatus(jSONObject.getBoolean("friendFlag"));
        }
    }

    public static class GroupParser extends JsonToObjectBaseResponseParser<GetGroupsResponse> {
        @Override // com.linecorp.linesdk.internal.nwclient.JsonToObjectBaseResponseParser
        public final Object b(JSONObject jSONObject) throws JSONException {
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = jSONObject.getJSONArray("groups");
            int i2 = 0;
            while (true) {
                Uri uri = null;
                if (i2 >= jSONArray.length()) {
                    return new GetGroupsResponse(arrayList, jSONObject.optString("pageToken", null));
                }
                JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                String strOptString = jSONObject2.optString("pictureUrl", null);
                String string = jSONObject2.getString("groupId");
                String string2 = jSONObject2.getString("groupName");
                if (strOptString != null) {
                    uri = Uri.parse(strOptString);
                }
                arrayList.add(new LineGroup(string, string2, uri));
                i2++;
            }
        }
    }

    public static class MembershipStatusParser extends JsonToObjectBaseResponseParser<MembershipStatus> {
        @Override // com.linecorp.linesdk.internal.nwclient.JsonToObjectBaseResponseParser
        public final Object b(JSONObject jSONObject) {
            return MembershipStatus.valueOf(jSONObject.getString("state").toUpperCase());
        }
    }

    public static class MultiSendResponseParser extends JsonToObjectBaseResponseParser<List<SendMessageResponse>> {
        @Override // com.linecorp.linesdk.internal.nwclient.JsonToObjectBaseResponseParser
        public final Object b(JSONObject jSONObject) throws JSONException {
            ArrayList arrayList = new ArrayList();
            if (jSONObject.has(PermissionsActivity.EXTRA_RESULTS)) {
                JSONArray jSONArray = jSONObject.getJSONArray(PermissionsActivity.EXTRA_RESULTS);
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                    Object obj = jSONObject2.get("status");
                    SendMessageResponse.Status status = SendMessageResponse.Status.OK;
                    if (!obj.equals(status.name().toLowerCase())) {
                        status = SendMessageResponse.Status.DISCARDED;
                    }
                    arrayList.add(new SendMessageResponse(jSONObject2.getString(MvelScriptManager.VAR_TO), status));
                }
            }
            return arrayList;
        }
    }

    public static class OpenChatAgreementStatusParser extends JsonToObjectBaseResponseParser<Boolean> {
        @Override // com.linecorp.linesdk.internal.nwclient.JsonToObjectBaseResponseParser
        public final Object b(JSONObject jSONObject) {
            return Boolean.valueOf(jSONObject.getBoolean("agreed"));
        }
    }

    public static class OpenChatRoomInfoParser extends JsonToObjectBaseResponseParser<OpenChatRoomInfo> {
        @Override // com.linecorp.linesdk.internal.nwclient.JsonToObjectBaseResponseParser
        public final Object b(JSONObject jSONObject) {
            return new OpenChatRoomInfo(jSONObject.getString("openchatId"), jSONObject.getString(ConfigurationName.DOWNLOAD_PLUGIN_URL));
        }
    }

    public static class OpenChatRoomJoinTypeParser extends JsonToObjectBaseResponseParser<OpenChatRoomJoinType> {
        @Override // com.linecorp.linesdk.internal.nwclient.JsonToObjectBaseResponseParser
        public final Object b(JSONObject jSONObject) {
            return OpenChatRoomJoinType.valueOf(jSONObject.getString("type").toUpperCase());
        }
    }

    public static class OpenChatRoomStatusParser extends JsonToObjectBaseResponseParser<OpenChatRoomStatus> {
        @Override // com.linecorp.linesdk.internal.nwclient.JsonToObjectBaseResponseParser
        public final Object b(JSONObject jSONObject) {
            return OpenChatRoomStatus.valueOf(jSONObject.getString("status").toUpperCase());
        }
    }

    public static class ProfileParser extends JsonToObjectBaseResponseParser<LineProfile> {
        public static LineProfile c(JSONObject jSONObject) {
            String strOptString = jSONObject.optString("pictureUrl", null);
            return new LineProfile(jSONObject.getString("userId"), jSONObject.getString("displayName"), strOptString == null ? null : Uri.parse(strOptString), jSONObject.optString("statusMessage", null));
        }

        @Override // com.linecorp.linesdk.internal.nwclient.JsonToObjectBaseResponseParser
        public final Object b(JSONObject jSONObject) {
            return c(jSONObject);
        }
    }

    static {
        new FriendshipStatusParser();
        new FriendsParser();
        new GroupParser();
        new MultiSendResponseParser();
        f36231h = new OpenChatAgreementStatusParser();
        f36232i = new OpenChatRoomInfoParser();
        new OpenChatRoomStatusParser();
        new MembershipStatusParser();
        new OpenChatRoomJoinTypeParser();
    }

    public TalkApiClient(Context context, Uri uri) {
        ChannelServiceHttpClient channelServiceHttpClient = new ChannelServiceHttpClient(context, "5.11.1");
        this.f36235a = uri;
        this.f36236b = channelServiceHttpClient;
    }

    public static LinkedHashMap a(InternalAccessToken internalAccessToken) {
        return UriUtils.b("Authorization", "Bearer " + internalAccessToken.f36176a);
    }
}
