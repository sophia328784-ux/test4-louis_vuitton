package net.rtccloud.sdk.internal;

import com.android.wiimu.model.IWiimuPlayStatus;

/* JADX INFO: loaded from: classes4.dex */
public final class Constants {

    public static final class AuthenticationNeeded {
        public static final int AUTH_NEEDED_BAD_AUTH = 4640;

        public static String valueOf(int i2) {
            if (i2 != 4640) {
                return null;
            }
            return "AUTH_NEEDED_BAD_AUTH";
        }
    }

    public static final class Call {
        public static final int AUDIO_START = 37123;
        public static final int AUDIO_STOP = 37124;
        public static final int CALL_CAPABILITIES_NGASVG = 1024;
        public static final int CALL_CREATED = 24832;
        public static final int CALL_NETWORK_EVENTS = 30208;
        public static final int CALL_REMOTE_NETWORK_EVENTS = 30224;
        public static final int CALL_STATUS = 28928;
        public static final int CAPABILITIES_NGA = 512;
        public static final int CONFERENCE_TRANSLATION = 29187;
        public static final int FLOORLIST = 29184;
        public static final int PARTICIPANTCHANGE = 29186;
        public static final int PARTICIPANTLIST = 29185;
        public static final int REMOTECAPS = 29952;
        public static final int SHARE_START = 37635;
        public static final int SHARE_STOP = 37636;
        public static final int SIP_ID = 29440;
        public static final int TESTCALLSTATS = 30464;
        public static final int VIDEO_PROFILE = 37392;
        public static final int VIDEO_START = 37424;
        public static final int VIDEO_STOP = 37440;

        public static String valueOf(int i2) {
            switch (i2) {
                case CALL_CREATED /* 24832 */:
                    return "CALL_CREATED";
                case CALL_STATUS /* 28928 */:
                    return "CALL_STATUS";
                case FLOORLIST /* 29184 */:
                    return "FLOORLIST";
                case PARTICIPANTLIST /* 29185 */:
                    return "PARTICIPANTLIST";
                case PARTICIPANTCHANGE /* 29186 */:
                    return "PARTICIPANTCHANGE";
                case SIP_ID /* 29440 */:
                    return "SIP_ID";
                case REMOTECAPS /* 29952 */:
                    return "REMOTECAPS";
                case TESTCALLSTATS /* 30464 */:
                    return "TESTCALLSTATS";
                case VIDEO_PROFILE /* 37392 */:
                    return "VIDEO_PROFILE";
                case VIDEO_START /* 37424 */:
                    return "VIDEO_START";
                case VIDEO_STOP /* 37440 */:
                    return "VIDEO_STOP";
                case SHARE_START /* 37635 */:
                    return "SHARE_START";
                case SHARE_STOP /* 37636 */:
                    return "SHARE_STOP";
                default:
                    return null;
            }
        }
    }

    public static final class CallStatus {
        public static final int ACTIVE = 28976;
        public static final int ACTIVE_DRIVER = 28978;
        public static final int ACTIVE_WEBRTC = 28977;
        public static final int DEAD_PARTY = 28994;
        public static final int ENDED = 28992;
        public static final int INCOMING = 28944;
        public static final int JOINING_MVS = 29040;
        public static final int LOCAL_ENDED = 28993;
        public static final int PAUSED = 29024;
        public static final int PEER_DISCONNECTED = 29120;
        public static final int PEER_RECONNECTED = 29121;
        public static final int PROCEEDING = 29008;
        public static final int RECORD_BOOKMARKED = 29090;
        public static final int RECORD_PAUSED = 29089;
        public static final int RECORD_STARTED = 29088;
        public static final int RECORD_STOPPED = 29104;
        public static final int RINGING = 28960;

        public static String valueOf(int i2) {
            if (i2 == 28944) {
                return "INCOMING";
            }
            if (i2 == 28960) {
                return "RINGING";
            }
            if (i2 == 29008) {
                return "PROCEEDING";
            }
            if (i2 == 29024) {
                return "PAUSED";
            }
            if (i2 == 29104) {
                return "RECORD_STOPPED";
            }
            if (i2 == 29088) {
                return "RECORD_STARTED";
            }
            if (i2 == 29089) {
                return "RECORD_PAUSED";
            }
            switch (i2) {
                case ACTIVE /* 28976 */:
                    return "ACTIVE";
                case ACTIVE_WEBRTC /* 28977 */:
                    return "ACTIVE_WEBRTC";
                case ACTIVE_DRIVER /* 28978 */:
                    return "ACTIVE_DRIVER";
                default:
                    switch (i2) {
                        case ENDED /* 28992 */:
                            return "ENDED";
                        case LOCAL_ENDED /* 28993 */:
                            return "LOCAL_ENDED";
                        case DEAD_PARTY /* 28994 */:
                            return "DEAD_PARTY";
                        default:
                            return null;
                    }
            }
        }
    }

    public static final class CallType {
        public static final int ATTENDEE = 65533;
        public static final int HOST = 65534;
        public static final int PHONE = 65535;
        public static final int SIX_DIGITS = 65531;

        public static String valueOf(int i2) {
            switch (i2) {
                case SIX_DIGITS /* 65531 */:
                    return "SIX_DIGITS";
                case 65532:
                default:
                    return null;
                case ATTENDEE /* 65533 */:
                    return "ATTENDEE";
                case HOST /* 65534 */:
                    return "HOST";
                case 65535:
                    return "PHONE";
            }
        }
    }

    public static final class ConnectionStatus {
        public static final int AUTHENTICATED = 4448;
        public static final int CONNECTED = 4384;
        public static final int DISCONNECTED = 4368;
        public static final int HAP_ERROR = 4515;
        public static final int SERVERUNREACHABLE = 4432;
        public static final int SIP_NOK = 4545;
        public static final int SIP_OK = 4544;
        public static final int SPEEDTEST_ERROR = 4516;
        public static final int SPEEDTEST_OK = 4519;
        public static final int STATUS_CONNECTION_NOK = 4481;
        public static final int STATUS_CONNECTION_OK = 4480;

        public static String valueOf(int i2) {
            if (i2 == 4368) {
                return "DISCONNECTED";
            }
            if (i2 == 4384) {
                return "CONNECTED";
            }
            if (i2 == 4432) {
                return "SERVERUNREACHABLE";
            }
            if (i2 == 4448) {
                return "AUTHENTICATED";
            }
            if (i2 == 4519) {
                return "SPEEDTEST_OK";
            }
            if (i2 == 4480) {
                return "STATUS_CONNECTION_OK";
            }
            if (i2 == 4481) {
                return "STATUS_CONNECTION_NOK";
            }
            if (i2 == 4515) {
                return "HAP_ERROR";
            }
            if (i2 == 4516) {
                return "SPEEDTEST_ERROR";
            }
            if (i2 == 4544) {
                return "SIP_OK";
            }
            if (i2 != 4545) {
                return null;
            }
            return "SIP_NOK";
        }
    }

    public static final class DataChannelType {
        public static final int ACK = 8240;
        public static final int IN_BAND = 8208;
        public static final int OUT_OF_BAND = 8192;

        public static String valueOf(int i2) {
            if (i2 == 8192) {
                return "OUT_OF_BAND";
            }
            if (i2 != 8208) {
                return i2 != 8240 ? Integer.toHexString(i2) : "ACK";
            }
            return "IN_BAND";
        }
    }

    public static final class DeviceType {
        public static final int APAD = 5;
        public static final int APHONE = 6;
        public static final int CONVERSATIONS = 8;
        public static final int ERROR = 7;
        public static final int IPAD = 3;
        public static final int IPHONE = 4;
        public static final int LINUX = 9;
        public static final int MAC = 2;
        public static final int PC = 1;
        public static final int UNKNOWN = 0;

        public static String valueOf(int i2) {
            switch (i2) {
                case 0:
                    return "UNKNOWN";
                case 1:
                    return "PC";
                case 2:
                    return "MAC";
                case 3:
                    return "IPAD";
                case 4:
                    return "IPHONE";
                case 5:
                    return "APAD";
                case 6:
                    return "APHONE";
                case 7:
                    return "ERROR";
                case 8:
                    return "CONVERSATIONS";
                case 9:
                    return "LINUX";
                default:
                    return null;
            }
        }
    }

    public static final class Direction {
        public static final int BOTH = 37379;
        public static final int RECV = 37378;
        public static final int SEND = 37377;

        public static String valueOf(int i2) {
            switch (i2) {
                case SEND /* 37377 */:
                    return "SEND";
                case RECV /* 37378 */:
                    return "RECV";
                case BOTH /* 37379 */:
                    return "BOTH";
                default:
                    return null;
            }
        }
    }

    public static final class Event {
        public static final int AUTHENTICATION_NEEDED = 4608;
        public static final int CONNECTION_STATUS = 4352;
        public static final int MEDIALOGCHUNKAVAILABLE = 5888;
        public static final int URISIPSTATUS = 5376;

        public static String valueOf(int i2) {
            if (i2 == 4352) {
                return "CONNECTION_STATUS";
            }
            if (i2 == 4608) {
                return "AUTHENTICATION_NEEDED";
            }
            if (i2 == 5376) {
                return "URISIPSTATUS";
            }
            if (i2 != 5888) {
                return null;
            }
            return "MEDIALOGCHUNKAVAILABLE";
        }
    }

    public static final class MeetingPointAction {
        public static final int ACCEPT = 2;
        public static final int ACCEPT_ONE_TO_ONE = 18;
        public static final int AUTOACCEPT = 8;
        public static final int CANCEL = 4;
        public static final int DEFAULT = 9;
        public static final int DENY = 3;
        public static final int HOST = 0;
        public static final int INVITE = 6;
        public static final int JOIN = 1;
        public static final int JOIN_WITH_HASH = 17;
        public static final int LIST = 10;
        public static final int LIST2 = 26;
        public static final int LOCK = 7;
        public static final int STOP = 5;

        public static String valueOf(int i2) {
            if (i2 == 17) {
                return "JOIN_WITH_HASH";
            }
            switch (i2) {
                case 0:
                    return "HOST";
                case 1:
                    return "JOIN";
                case 2:
                    return "ACCEPT";
                case 3:
                    return "DENY";
                case 4:
                    return "CANCEL";
                case 5:
                    return "STOP";
                case 6:
                    return "INVITE";
                case 7:
                    return "LOCK";
                case 8:
                    return "AUTOACCEPT";
                case 9:
                    return "DEFAULT";
                case 10:
                    return "LIST";
                default:
                    return null;
            }
        }
    }

    public static final class MeetingPointConfig {
        public static final int CREATED = 1;
        public static final int DELETED = 4;
        public static final int DETAILS = 5;
        public static final int ERROR = 128;
        public static final int UPDATED = 2;
        public static final int URL = 3;

        public static String valueOf(int i2) {
            if (i2 == 1) {
                return "CREATED";
            }
            if (i2 == 2) {
                return "UPDATED";
            }
            if (i2 == 3) {
                return "URL";
            }
            if (i2 == 4) {
                return "DELETED";
            }
            if (i2 == 5) {
                return "DETAILS";
            }
            if (i2 != 128) {
                return null;
            }
            return "ERROR";
        }
    }

    public static final class MeetingPointControl {
        public static final int ACCEPTED = 2;
        public static final int ACCEPTEDONETOONE = 8;
        public static final int AUTOACCEPT = 9;
        public static final int CANCELLED = 4;
        public static final int DEFAULT = 10;
        public static final int DENIED = 3;
        public static final int ERROR = 128;
        public static final int HOSTED = 1;
        public static final int HOSTED_BROADCAST = 32;
        public static final int HOSTED_BY_HOST = 48;
        public static final int HOSTED_ONE_TO_ONE = 16;
        public static final int INVITED = 7;
        public static final int REQUESTED = 6;
        public static final int STOPPED = 5;

        public static String valueOf(int i2) {
            if (i2 == 128) {
                return "ERROR";
            }
            switch (i2) {
                case 1:
                    return "HOSTED";
                case 2:
                    return "ACCEPTED";
                case 3:
                    return "DENIED";
                case 4:
                    return "CANCELLED";
                case 5:
                    return IWiimuPlayStatus.Stopped;
                case 6:
                    return "REQUESTED";
                case 7:
                    return "INVITED";
                case 8:
                    return "ACCEPTEDONETOONE";
                case 9:
                    return "AUTOACCEPT";
                case 10:
                    return "DEFAULT";
                default:
                    return null;
            }
        }

        public static String valueOfMeeting(int i2) {
            switch (i2) {
                case 1:
                    return "hosted";
                case 2:
                    return "accepted";
                case 3:
                    return "denied";
                case 4:
                    return "meetingcancelled";
                case 5:
                    return IWiimuPlayStatus.Stopped;
                case 6:
                    return "pending";
                case 7:
                default:
                    return null;
                case 8:
                    return "acceptedonetoone";
            }
        }
    }

    public static final class MeetingPointEvent {
        public static final int CONFIG = 12288;
        public static final int CONTROL = 12304;
        public static final int MP_LIST = 12320;

        public static String valueOf(int i2) {
            if (i2 == 12288) {
                return "CONFIG";
            }
            if (i2 != 12304) {
                return null;
            }
            return "CONTROL";
        }
    }

    public static final class MeetingPointType {
        public static final int ADHOC = 2;
        public static final int PERMANENT = 0;
        public static final int SCHEDULED = 1;

        public static String valueOf(int i2) {
            if (i2 == 0) {
                return "PERMANENT";
            }
            if (i2 == 1) {
                return "SCHEDULED";
            }
            if (i2 != 2) {
                return null;
            }
            return "ADHOC";
        }
    }

    public static final class Profile {
        public static final int HD = 3;
        public static final int MD = 1;
        public static final int MHD = 2;
        public static final int SD = 0;

        public static String valueOf(int i2) {
            if (i2 == 0) {
                return "SD";
            }
            if (i2 == 1) {
                return "MD";
            }
            if (i2 == 2) {
                return "MHD";
            }
            if (i2 != 3) {
                return null;
            }
            return "HD";
        }
    }

    public static final class RegistrationStatus {
        public static final int ALREADY_REGISTERED = 2;
        public static final int REGISTERED = 1;
        public static final int UNREGISTERED = 0;

        public static String valueOf(int i2) {
            if (i2 == 0) {
                return "UNREGISTERED";
            }
            if (i2 == 1) {
                return "REGISTERED";
            }
            if (i2 != 2) {
                return null;
            }
            return "ALREADY_REGISTERED";
        }
    }

    public static final class UserType {
        public static final int EXTERNAL = 1;
        public static final int INTERNAL = 0;
        public static final int SIX_DIGITS = 6;
        public static final int SUFFIX = 2;

        public static String valueOf(int i2) {
            if (i2 == 0) {
                return "INTERNAL";
            }
            if (i2 == 1) {
                return "EXTERNAL";
            }
            if (i2 == 2) {
                return "SUFFIX";
            }
            if (i2 != 6) {
                return null;
            }
            return "SIX_DIGITS";
        }
    }
}
