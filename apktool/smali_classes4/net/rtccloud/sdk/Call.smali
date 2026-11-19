.class public Lnet/rtccloud/sdk/Call;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/Call$Status;,
        Lnet/rtccloud/sdk/Call$Type;,
        Lnet/rtccloud/sdk/Call$Parameters;,
        Lnet/rtccloud/sdk/Call$Traffic;,
        Lnet/rtccloud/sdk/Call$RemoteType;,
        Lnet/rtccloud/sdk/Call$Native;,
        Lnet/rtccloud/sdk/Call$Control;,
        Lnet/rtccloud/sdk/Call$EndReason;,
        Lnet/rtccloud/sdk/Call$Stats;,
        Lnet/rtccloud/sdk/Call$QualityIndicator;,
        Lnet/rtccloud/sdk/Call$StatsHistory;
    }
.end annotation


# static fields
.field public static final UNDEFINED_ID:I = -0x1


# instance fields
.field private activeTimestamp:J

.field annotationTypeCommand:Lnet/rtccloud/sdk/event/AnnotationTypeCommand;

.field final audioModule:Lnet/rtccloud/sdk/AudioModule;

.field final callModule:Lnet/rtccloud/sdk/CallModule;

.field final conferenceModule:Lnet/rtccloud/sdk/ConferenceModule;

.field private connectivityReceiver:Landroid/content/BroadcastReceiver;

.field private endReason:Lnet/rtccloud/sdk/Call$EndReason;

.field private endTimestamp:J

.field final frameFetcher:Lnet/rtccloud/sdk/FrameFetcher;

.field private hasRequestedHangup:Z

.field id:I

.field private isEscalating:Z

.field key:Ljava/lang/String;

.field liveTranslationNewSentenceCallback:Lnet/rtccloud/sdk/event/LiveTranslationNewSentence;

.field private final log:Lnet/rtccloud/sdk/util/OldLogger;

.field final nativeInterface:Lnet/rtccloud/sdk/Call$Native;

.field parameters:Lnet/rtccloud/sdk/Call$Parameters;

.field private participant:Lnet/rtccloud/sdk/Participant;

.field final progressivexSink:Lnet/rtccloud/sdk/Sink$Progressivex;

.field private progressivexStarted:Z

.field private final referenceTraffic:Lnet/rtccloud/sdk/Call$Traffic;

.field private remoteType:Lnet/rtccloud/sdk/Call$RemoteType;

.field private final rtcc:Lnet/rtccloud/sdk/Rtcc;

.field final screenshareModule:Lnet/rtccloud/sdk/ScreenshareModule;

.field final screenshareSink:Lnet/rtccloud/sdk/Sink$Screenshare;

.field sipId:Ljava/lang/String;

.field private final startTimestamp:J

.field status:Lnet/rtccloud/sdk/Call$Status;

.field private traffic:Lnet/rtccloud/sdk/Call$Traffic;

.field type:Lnet/rtccloud/sdk/Call$Type;

.field private useNgaSVG:Z

.field final videoModule:Lnet/rtccloud/sdk/VideoModule;

.field final videoSink:Lnet/rtccloud/sdk/Sink$Video;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/CallModule;Lnet/rtccloud/sdk/AudioModule;Lnet/rtccloud/sdk/VideoModule;Lnet/rtccloud/sdk/ScreenshareModule;Lnet/rtccloud/sdk/ConferenceModule;Lnet/rtccloud/sdk/Sink$Video;Lnet/rtccloud/sdk/Sink$Screenshare;Lnet/rtccloud/sdk/Sink$Progressivex;Lnet/rtccloud/sdk/FrameFetcher;Lnet/rtccloud/sdk/Call$Native;)V
    .locals 3

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->CALL:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    iput-object v0, p0, Lnet/rtccloud/sdk/Call;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lnet/rtccloud/sdk/Call;->useNgaSVG:Z

    .line 159
    iput-boolean v0, p0, Lnet/rtccloud/sdk/Call;->progressivexStarted:Z

    const/4 v1, -0x1

    .line 160
    iput v1, p0, Lnet/rtccloud/sdk/Call;->id:I

    .line 161
    sget-object v1, Lnet/rtccloud/sdk/Call$Status;->CREATING:Lnet/rtccloud/sdk/Call$Status;

    iput-object v1, p0, Lnet/rtccloud/sdk/Call;->status:Lnet/rtccloud/sdk/Call$Status;

    .line 162
    sget-object v1, Lnet/rtccloud/sdk/Call$Type;->UNKNOWN:Lnet/rtccloud/sdk/Call$Type;

    iput-object v1, p0, Lnet/rtccloud/sdk/Call;->type:Lnet/rtccloud/sdk/Call$Type;

    .line 163
    new-instance v1, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {v1}, Lnet/rtccloud/sdk/Call$Parameters;-><init>()V

    iput-object v1, p0, Lnet/rtccloud/sdk/Call;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    .line 164
    new-instance v1, Lnet/rtccloud/sdk/Call$Traffic;

    invoke-direct {v1}, Lnet/rtccloud/sdk/Call$Traffic;-><init>()V

    iput-object v1, p0, Lnet/rtccloud/sdk/Call;->referenceTraffic:Lnet/rtccloud/sdk/Call$Traffic;

    .line 165
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lnet/rtccloud/sdk/Call;->startTimestamp:J

    const-wide/16 v1, 0x0

    .line 166
    iput-wide v1, p0, Lnet/rtccloud/sdk/Call;->activeTimestamp:J

    iput-wide v1, p0, Lnet/rtccloud/sdk/Call;->endTimestamp:J

    .line 167
    sget-object v1, Lnet/rtccloud/sdk/Call$RemoteType;->UNKNOWN:Lnet/rtccloud/sdk/Call$RemoteType;

    iput-object v1, p0, Lnet/rtccloud/sdk/Call;->remoteType:Lnet/rtccloud/sdk/Call$RemoteType;

    .line 168
    iput-boolean v0, p0, Lnet/rtccloud/sdk/Call;->hasRequestedHangup:Z

    .line 169
    iput-boolean v0, p0, Lnet/rtccloud/sdk/Call;->isEscalating:Z

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lnet/rtccloud/sdk/Call;->annotationTypeCommand:Lnet/rtccloud/sdk/event/AnnotationTypeCommand;

    .line 171
    iput-object v0, p0, Lnet/rtccloud/sdk/Call;->liveTranslationNewSentenceCallback:Lnet/rtccloud/sdk/event/LiveTranslationNewSentence;

    .line 172
    iput-object p1, p0, Lnet/rtccloud/sdk/Call;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    .line 173
    iput-object p2, p0, Lnet/rtccloud/sdk/Call;->callModule:Lnet/rtccloud/sdk/CallModule;

    .line 174
    iput-object p3, p0, Lnet/rtccloud/sdk/Call;->audioModule:Lnet/rtccloud/sdk/AudioModule;

    .line 175
    iput-object p4, p0, Lnet/rtccloud/sdk/Call;->videoModule:Lnet/rtccloud/sdk/VideoModule;

    .line 176
    iput-object p5, p0, Lnet/rtccloud/sdk/Call;->screenshareModule:Lnet/rtccloud/sdk/ScreenshareModule;

    .line 177
    iput-object p6, p0, Lnet/rtccloud/sdk/Call;->conferenceModule:Lnet/rtccloud/sdk/ConferenceModule;

    .line 178
    iput-object p7, p0, Lnet/rtccloud/sdk/Call;->videoSink:Lnet/rtccloud/sdk/Sink$Video;

    .line 179
    iput-object p8, p0, Lnet/rtccloud/sdk/Call;->screenshareSink:Lnet/rtccloud/sdk/Sink$Screenshare;

    .line 180
    iput-object p9, p0, Lnet/rtccloud/sdk/Call;->progressivexSink:Lnet/rtccloud/sdk/Sink$Progressivex;

    .line 181
    iput-object p10, p0, Lnet/rtccloud/sdk/Call;->frameFetcher:Lnet/rtccloud/sdk/FrameFetcher;

    .line 182
    iput-object p11, p0, Lnet/rtccloud/sdk/Call;->nativeInterface:Lnet/rtccloud/sdk/Call$Native;

    return-void
.end method

.method public constructor <init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/CallModule;Lnet/rtccloud/sdk/Call$Native;ILjava/lang/String;)V
    .locals 3

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->CALL:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    iput-object v0, p0, Lnet/rtccloud/sdk/Call;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lnet/rtccloud/sdk/Call;->useNgaSVG:Z

    .line 186
    iput-boolean v0, p0, Lnet/rtccloud/sdk/Call;->progressivexStarted:Z

    const/4 v1, -0x1

    .line 187
    iput v1, p0, Lnet/rtccloud/sdk/Call;->id:I

    .line 188
    sget-object v1, Lnet/rtccloud/sdk/Call$Status;->CREATING:Lnet/rtccloud/sdk/Call$Status;

    iput-object v1, p0, Lnet/rtccloud/sdk/Call;->status:Lnet/rtccloud/sdk/Call$Status;

    .line 189
    sget-object v1, Lnet/rtccloud/sdk/Call$Type;->UNKNOWN:Lnet/rtccloud/sdk/Call$Type;

    iput-object v1, p0, Lnet/rtccloud/sdk/Call;->type:Lnet/rtccloud/sdk/Call$Type;

    .line 190
    new-instance v1, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {v1}, Lnet/rtccloud/sdk/Call$Parameters;-><init>()V

    iput-object v1, p0, Lnet/rtccloud/sdk/Call;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    .line 191
    new-instance v1, Lnet/rtccloud/sdk/Call$Traffic;

    invoke-direct {v1}, Lnet/rtccloud/sdk/Call$Traffic;-><init>()V

    iput-object v1, p0, Lnet/rtccloud/sdk/Call;->referenceTraffic:Lnet/rtccloud/sdk/Call$Traffic;

    .line 192
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lnet/rtccloud/sdk/Call;->startTimestamp:J

    const-wide/16 v1, 0x0

    .line 193
    iput-wide v1, p0, Lnet/rtccloud/sdk/Call;->activeTimestamp:J

    iput-wide v1, p0, Lnet/rtccloud/sdk/Call;->endTimestamp:J

    .line 194
    sget-object v1, Lnet/rtccloud/sdk/Call$RemoteType;->UNKNOWN:Lnet/rtccloud/sdk/Call$RemoteType;

    iput-object v1, p0, Lnet/rtccloud/sdk/Call;->remoteType:Lnet/rtccloud/sdk/Call$RemoteType;

    .line 195
    iput-boolean v0, p0, Lnet/rtccloud/sdk/Call;->hasRequestedHangup:Z

    .line 196
    iput-boolean v0, p0, Lnet/rtccloud/sdk/Call;->isEscalating:Z

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lnet/rtccloud/sdk/Call;->annotationTypeCommand:Lnet/rtccloud/sdk/event/AnnotationTypeCommand;

    .line 198
    iput-object v0, p0, Lnet/rtccloud/sdk/Call;->liveTranslationNewSentenceCallback:Lnet/rtccloud/sdk/event/LiveTranslationNewSentence;

    .line 199
    iput-object p1, p0, Lnet/rtccloud/sdk/Call;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    .line 200
    iput-object p2, p0, Lnet/rtccloud/sdk/Call;->callModule:Lnet/rtccloud/sdk/CallModule;

    .line 201
    iput-object p3, p0, Lnet/rtccloud/sdk/Call;->nativeInterface:Lnet/rtccloud/sdk/Call$Native;

    .line 202
    iput-object p5, p0, Lnet/rtccloud/sdk/Call;->key:Ljava/lang/String;

    .line 203
    iput p4, p0, Lnet/rtccloud/sdk/Call;->id:I

    .line 204
    sget-object p2, Lnet/rtccloud/sdk/Call$Type;->CALL_INBOUND:Lnet/rtccloud/sdk/Call$Type;

    iput-object p2, p0, Lnet/rtccloud/sdk/Call;->type:Lnet/rtccloud/sdk/Call$Type;

    .line 205
    new-instance p2, Lnet/rtccloud/sdk/Sink$Video;

    invoke-direct {p2, p1, p0}, Lnet/rtccloud/sdk/Sink$Video;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;)V

    iput-object p2, p0, Lnet/rtccloud/sdk/Call;->videoSink:Lnet/rtccloud/sdk/Sink$Video;

    .line 206
    new-instance p2, Lnet/rtccloud/sdk/Sink$Screenshare;

    invoke-direct {p2, p1, p0}, Lnet/rtccloud/sdk/Sink$Screenshare;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;)V

    iput-object p2, p0, Lnet/rtccloud/sdk/Call;->screenshareSink:Lnet/rtccloud/sdk/Sink$Screenshare;

    .line 207
    new-instance p2, Lnet/rtccloud/sdk/Sink$Progressivex;

    invoke-direct {p2, p1, p0}, Lnet/rtccloud/sdk/Sink$Progressivex;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;)V

    iput-object p2, p0, Lnet/rtccloud/sdk/Call;->progressivexSink:Lnet/rtccloud/sdk/Sink$Progressivex;

    .line 208
    new-instance p2, Lnet/rtccloud/sdk/FrameFetcher;

    invoke-direct {p2, p0}, Lnet/rtccloud/sdk/FrameFetcher;-><init>(Lnet/rtccloud/sdk/Call;)V

    iput-object p2, p0, Lnet/rtccloud/sdk/Call;->frameFetcher:Lnet/rtccloud/sdk/FrameFetcher;

    .line 209
    new-instance p3, Lnet/rtccloud/sdk/VideoModule;

    invoke-direct {p3, p1, p0, p2}, Lnet/rtccloud/sdk/VideoModule;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/FrameFetcher;)V

    iput-object p3, p0, Lnet/rtccloud/sdk/Call;->videoModule:Lnet/rtccloud/sdk/VideoModule;

    .line 210
    new-instance p3, Lnet/rtccloud/sdk/ScreenshareModule;

    invoke-direct {p3, p1, p0, p2}, Lnet/rtccloud/sdk/ScreenshareModule;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/FrameFetcher;)V

    iput-object p3, p0, Lnet/rtccloud/sdk/Call;->screenshareModule:Lnet/rtccloud/sdk/ScreenshareModule;

    .line 211
    new-instance p2, Lnet/rtccloud/sdk/AudioModule;

    sget-object p3, Lnet/rtccloud/sdk/AudioModule$Native;->JNI:Lnet/rtccloud/sdk/AudioModule$Native;

    invoke-direct {p2, p1, p0, p3}, Lnet/rtccloud/sdk/AudioModule;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/AudioModule$Native;)V

    iput-object p2, p0, Lnet/rtccloud/sdk/Call;->audioModule:Lnet/rtccloud/sdk/AudioModule;

    .line 212
    new-instance p2, Lnet/rtccloud/sdk/ConferenceModule;

    sget-object p3, Lnet/rtccloud/sdk/ConferenceModule$Native;->JNI:Lnet/rtccloud/sdk/ConferenceModule$Native;

    invoke-direct {p2, p1, p0, p3}, Lnet/rtccloud/sdk/ConferenceModule;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/ConferenceModule$Native;)V

    iput-object p2, p0, Lnet/rtccloud/sdk/Call;->conferenceModule:Lnet/rtccloud/sdk/ConferenceModule;

    .line 213
    iget-object p1, p1, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance p2, Lnet/rtccloud/sdk/event/call/StatusEvent;

    iget-object p3, p0, Lnet/rtccloud/sdk/Call;->status:Lnet/rtccloud/sdk/Call$Status;

    invoke-direct {p2, p0, p3}, Lnet/rtccloud/sdk/event/call/StatusEvent;-><init>(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)V

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/CallModule;Lnet/rtccloud/sdk/Call$Native;Ljava/lang/String;Lnet/rtccloud/sdk/Call$Type;Lnet/rtccloud/sdk/Call$Parameters;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->CALL:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    iput-object v0, p0, Lnet/rtccloud/sdk/Call;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/rtccloud/sdk/Call;->useNgaSVG:Z

    iput-boolean v0, p0, Lnet/rtccloud/sdk/Call;->progressivexStarted:Z

    const/4 v1, -0x1

    iput v1, p0, Lnet/rtccloud/sdk/Call;->id:I

    sget-object v1, Lnet/rtccloud/sdk/Call$Status;->CREATING:Lnet/rtccloud/sdk/Call$Status;

    iput-object v1, p0, Lnet/rtccloud/sdk/Call;->status:Lnet/rtccloud/sdk/Call$Status;

    sget-object v1, Lnet/rtccloud/sdk/Call$Type;->UNKNOWN:Lnet/rtccloud/sdk/Call$Type;

    iput-object v1, p0, Lnet/rtccloud/sdk/Call;->type:Lnet/rtccloud/sdk/Call$Type;

    new-instance v1, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {v1}, Lnet/rtccloud/sdk/Call$Parameters;-><init>()V

    iput-object v1, p0, Lnet/rtccloud/sdk/Call;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    new-instance v1, Lnet/rtccloud/sdk/Call$Traffic;

    invoke-direct {v1}, Lnet/rtccloud/sdk/Call$Traffic;-><init>()V

    iput-object v1, p0, Lnet/rtccloud/sdk/Call;->referenceTraffic:Lnet/rtccloud/sdk/Call$Traffic;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lnet/rtccloud/sdk/Call;->startTimestamp:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lnet/rtccloud/sdk/Call;->activeTimestamp:J

    iput-wide v1, p0, Lnet/rtccloud/sdk/Call;->endTimestamp:J

    sget-object v1, Lnet/rtccloud/sdk/Call$RemoteType;->UNKNOWN:Lnet/rtccloud/sdk/Call$RemoteType;

    iput-object v1, p0, Lnet/rtccloud/sdk/Call;->remoteType:Lnet/rtccloud/sdk/Call$RemoteType;

    iput-boolean v0, p0, Lnet/rtccloud/sdk/Call;->hasRequestedHangup:Z

    iput-boolean v0, p0, Lnet/rtccloud/sdk/Call;->isEscalating:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/rtccloud/sdk/Call;->annotationTypeCommand:Lnet/rtccloud/sdk/event/AnnotationTypeCommand;

    iput-object v0, p0, Lnet/rtccloud/sdk/Call;->liveTranslationNewSentenceCallback:Lnet/rtccloud/sdk/event/LiveTranslationNewSentence;

    iput-object p1, p0, Lnet/rtccloud/sdk/Call;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iput-object p2, p0, Lnet/rtccloud/sdk/Call;->callModule:Lnet/rtccloud/sdk/CallModule;

    iput-object p3, p0, Lnet/rtccloud/sdk/Call;->nativeInterface:Lnet/rtccloud/sdk/Call$Native;

    iput-object p4, p0, Lnet/rtccloud/sdk/Call;->key:Ljava/lang/String;

    new-instance p2, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {p2, p6}, Lnet/rtccloud/sdk/Call$Parameters;-><init>(Lnet/rtccloud/sdk/Call$Parameters;)V

    iput-object p2, p0, Lnet/rtccloud/sdk/Call;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    iput-object p5, p0, Lnet/rtccloud/sdk/Call;->type:Lnet/rtccloud/sdk/Call$Type;

    new-instance p2, Lnet/rtccloud/sdk/Sink$Video;

    invoke-direct {p2, p1, p0}, Lnet/rtccloud/sdk/Sink$Video;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;)V

    iput-object p2, p0, Lnet/rtccloud/sdk/Call;->videoSink:Lnet/rtccloud/sdk/Sink$Video;

    new-instance p2, Lnet/rtccloud/sdk/Sink$Screenshare;

    invoke-direct {p2, p1, p0}, Lnet/rtccloud/sdk/Sink$Screenshare;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;)V

    iput-object p2, p0, Lnet/rtccloud/sdk/Call;->screenshareSink:Lnet/rtccloud/sdk/Sink$Screenshare;

    new-instance p2, Lnet/rtccloud/sdk/Sink$Progressivex;

    invoke-direct {p2, p1, p0}, Lnet/rtccloud/sdk/Sink$Progressivex;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;)V

    iput-object p2, p0, Lnet/rtccloud/sdk/Call;->progressivexSink:Lnet/rtccloud/sdk/Sink$Progressivex;

    new-instance p2, Lnet/rtccloud/sdk/FrameFetcher;

    invoke-direct {p2, p0}, Lnet/rtccloud/sdk/FrameFetcher;-><init>(Lnet/rtccloud/sdk/Call;)V

    iput-object p2, p0, Lnet/rtccloud/sdk/Call;->frameFetcher:Lnet/rtccloud/sdk/FrameFetcher;

    new-instance p3, Lnet/rtccloud/sdk/VideoModule;

    invoke-direct {p3, p1, p0, p2}, Lnet/rtccloud/sdk/VideoModule;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/FrameFetcher;)V

    iput-object p3, p0, Lnet/rtccloud/sdk/Call;->videoModule:Lnet/rtccloud/sdk/VideoModule;

    new-instance p3, Lnet/rtccloud/sdk/ScreenshareModule;

    invoke-direct {p3, p1, p0, p2}, Lnet/rtccloud/sdk/ScreenshareModule;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/FrameFetcher;)V

    iput-object p3, p0, Lnet/rtccloud/sdk/Call;->screenshareModule:Lnet/rtccloud/sdk/ScreenshareModule;

    new-instance p2, Lnet/rtccloud/sdk/AudioModule;

    sget-object p3, Lnet/rtccloud/sdk/AudioModule$Native;->JNI:Lnet/rtccloud/sdk/AudioModule$Native;

    invoke-direct {p2, p1, p0, p3}, Lnet/rtccloud/sdk/AudioModule;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/AudioModule$Native;)V

    iput-object p2, p0, Lnet/rtccloud/sdk/Call;->audioModule:Lnet/rtccloud/sdk/AudioModule;

    new-instance p2, Lnet/rtccloud/sdk/ConferenceModule;

    sget-object p3, Lnet/rtccloud/sdk/ConferenceModule$Native;->JNI:Lnet/rtccloud/sdk/ConferenceModule$Native;

    invoke-direct {p2, p1, p0, p3}, Lnet/rtccloud/sdk/ConferenceModule;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/ConferenceModule$Native;)V

    iput-object p2, p0, Lnet/rtccloud/sdk/Call;->conferenceModule:Lnet/rtccloud/sdk/ConferenceModule;

    iget-object p1, p1, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance p2, Lnet/rtccloud/sdk/event/call/StatusEvent;

    iget-object p3, p0, Lnet/rtccloud/sdk/Call;->status:Lnet/rtccloud/sdk/Call$Status;

    invoke-direct {p2, p0, p3}, Lnet/rtccloud/sdk/event/call/StatusEvent;-><init>(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)V

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private _accept(Lnet/rtccloud/sdk/Call$Parameters;)V
    .locals 3

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->log:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v1, p0, Lnet/rtccloud/sdk/Call;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->log:Lnet/rtccloud/sdk/util/OldLogger;

    sget-object v1, Lnet/rtccloud/sdk/Call$Status;->RINGING:Lnet/rtccloud/sdk/Call$Status;

    invoke-static {v0, p0, v1}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {v0, p1}, Lnet/rtccloud/sdk/Call$Parameters;-><init>(Lnet/rtccloud/sdk/Call$Parameters;)V

    iput-object v0, p0, Lnet/rtccloud/sdk/Call;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {p0}, Lnet/rtccloud/sdk/Call;->startInternal()V

    return-void
.end method

.method public static bridge synthetic a(Lnet/rtccloud/sdk/Call;)Lnet/rtccloud/sdk/util/OldLogger;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-object p0
.end method

.method public static bridge synthetic b(Lnet/rtccloud/sdk/Call;)Lnet/rtccloud/sdk/Rtcc;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    return-object p0
.end method

.method public static bridge synthetic c(Lnet/rtccloud/sdk/Call;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/rtccloud/sdk/Call;->isEscalating:Z

    return-void
.end method

.method private registerConnectivityReceiver()V
    .locals 3

    new-instance v0, Lnet/rtccloud/sdk/Call$2;

    invoke-direct {v0, p0}, Lnet/rtccloud/sdk/Call$2;-><init>(Lnet/rtccloud/sdk/Call;)V

    iput-object v0, p0, Lnet/rtccloud/sdk/Call;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->context()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private startInternal()V
    .locals 3

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call$Parameters;->video()Z

    move-result v0

    iget-object v1, p0, Lnet/rtccloud/sdk/Call;->nativeInterface:Lnet/rtccloud/sdk/Call$Native;

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    sget-object v0, Lnet/rtccloud/sdk/Call$Control;->START:Lnet/rtccloud/sdk/Call$Control;

    iget p0, p0, Lnet/rtccloud/sdk/Call;->id:I

    invoke-interface {v1, v0, p0, v2}, Lnet/rtccloud/sdk/Call$Native;->control(Lnet/rtccloud/sdk/Call$Control;II)V

    return-void

    :cond_0
    sget-object v0, Lnet/rtccloud/sdk/Call$Control;->STARTNOVIDEO:Lnet/rtccloud/sdk/Call$Control;

    iget p0, p0, Lnet/rtccloud/sdk/Call;->id:I

    invoke-interface {v1, v0, p0, v2}, Lnet/rtccloud/sdk/Call$Native;->control(Lnet/rtccloud/sdk/Call$Control;II)V

    return-void
.end method


# virtual methods
.method public accept()V
    .locals 2

    .line 32
    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "accept()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    .line 34
    :cond_0
    new-instance v0, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {v0}, Lnet/rtccloud/sdk/Call$Parameters;-><init>()V

    invoke-direct {p0, v0}, Lnet/rtccloud/sdk/Call;->_accept(Lnet/rtccloud/sdk/Call$Parameters;)V

    return-void
.end method

.method public accept(Lnet/rtccloud/sdk/Call$Parameters;)V
    .locals 3

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "accept(parameters=%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/Call;->_accept(Lnet/rtccloud/sdk/Call$Parameters;)V

    return-void

    :cond_1
    const-string p0, "[parameters] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public activateSvgAnnotation()V
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->annotationTypeCommand:Lnet/rtccloud/sdk/event/AnnotationTypeCommand;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lnet/rtccloud/sdk/event/AnnotationTypeCommand;->driven()V

    :cond_0
    return-void
.end method

.method public activeDuration()J
    .locals 4

    iget-wide v0, p0, Lnet/rtccloud/sdk/Call;->activeTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    :cond_0
    iget-wide v0, p0, Lnet/rtccloud/sdk/Call;->endTimestamp:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_0
    iget-wide v2, p0, Lnet/rtccloud/sdk/Call;->activeTimestamp:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public audio()Lnet/rtccloud/sdk/AudioModule;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->audioModule:Lnet/rtccloud/sdk/AudioModule;

    return-object p0
.end method

.method public conference()Lnet/rtccloud/sdk/ConferenceModule;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->conferenceModule:Lnet/rtccloud/sdk/ConferenceModule;

    return-object p0
.end method

.method public created(IILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->log:Lnet/rtccloud/sdk/util/OldLogger;

    sget-object v1, Lnet/rtccloud/sdk/Call$Status;->CREATING:Lnet/rtccloud/sdk/Call$Status;

    invoke-static {v0, p0, v1}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lnet/rtccloud/sdk/Call;->id:I

    iput-object p3, p0, Lnet/rtccloud/sdk/Call;->key:Ljava/lang/String;

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->type:Lnet/rtccloud/sdk/Call$Type;

    sget-object v1, Lnet/rtccloud/sdk/Call$Type;->CONFERENCE_ATTENDEE:Lnet/rtccloud/sdk/Call$Type;

    if-ne v0, v1, :cond_1

    const v0, 0xffff

    if-ne p2, v0, :cond_1

    sget-object p2, Lnet/rtccloud/sdk/Call$Type;->CALL_OUTBOUND:Lnet/rtccloud/sdk/Call$Type;

    iput-object p2, p0, Lnet/rtccloud/sdk/Call;->type:Lnet/rtccloud/sdk/Call$Type;

    :cond_1
    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->isConference()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lnet/rtccloud/sdk/Call;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-static {p2, p0, p3}, Lnet/rtccloud/sdk/Participant;->createRemote(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;Ljava/lang/String;)Lnet/rtccloud/sdk/Participant;

    move-result-object p2

    iput-object p2, p0, Lnet/rtccloud/sdk/Call;->participant:Lnet/rtccloud/sdk/Participant;

    :cond_2
    iget-boolean p2, p0, Lnet/rtccloud/sdk/Call;->hasRequestedHangup:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    iget-object p2, p0, Lnet/rtccloud/sdk/Call;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "Call created, but hangup was requested before"

    invoke-virtual {p2, v0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->nativeInterface:Lnet/rtccloud/sdk/Call$Native;

    sget-object p2, Lnet/rtccloud/sdk/Call$Control;->STOP:Lnet/rtccloud/sdk/Call$Control;

    invoke-interface {p0, p2, p1, p3}, Lnet/rtccloud/sdk/Call$Native;->control(Lnet/rtccloud/sdk/Call$Control;II)V

    return-void

    :cond_3
    iget-object p1, p0, Lnet/rtccloud/sdk/Call;->type:Lnet/rtccloud/sdk/Call$Type;

    sget-object p2, Lnet/rtccloud/sdk/Call$Type;->CALL_OUTBOUND:Lnet/rtccloud/sdk/Call$Type;

    if-eq p1, p2, :cond_5

    if-eq p1, v1, :cond_5

    sget-object p2, Lnet/rtccloud/sdk/Call$Type;->CONFERENCE_HOST:Lnet/rtccloud/sdk/Call$Type;

    if-ne p1, p2, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    iget-object p1, p0, Lnet/rtccloud/sdk/Call;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->isMeeting()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-direct {p0}, Lnet/rtccloud/sdk/Call;->startInternal()V

    :cond_6
    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->audioModule:Lnet/rtccloud/sdk/AudioModule;

    const/4 p1, 0x1

    invoke-virtual {p0, p3, p1}, Lnet/rtccloud/sdk/AudioModule;->muteRecorder(ZZ)V

    return-void
.end method

.method public deactivateSvgAnnotation()V
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->annotationTypeCommand:Lnet/rtccloud/sdk/event/AnnotationTypeCommand;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lnet/rtccloud/sdk/event/AnnotationTypeCommand;->standalone()V

    :cond_0
    return-void
.end method

.method public deny()V
    .locals 4

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "deny()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->log:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v1, p0, Lnet/rtccloud/sdk/Call;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    sget-object v3, Lnet/rtccloud/sdk/Rtcc$Status;->NETWORK_LOST:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2, v3}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->log:Lnet/rtccloud/sdk/util/OldLogger;

    sget-object v1, Lnet/rtccloud/sdk/Call$Status;->RINGING:Lnet/rtccloud/sdk/Call$Status;

    invoke-static {v0, p0, v1}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/rtccloud/sdk/Call;->hasRequestedHangup:Z

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->nativeInterface:Lnet/rtccloud/sdk/Call$Native;

    sget-object v1, Lnet/rtccloud/sdk/Call$Control;->STOP:Lnet/rtccloud/sdk/Call$Control;

    iget p0, p0, Lnet/rtccloud/sdk/Call;->id:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lnet/rtccloud/sdk/Call$Native;->control(Lnet/rtccloud/sdk/Call$Control;II)V

    return-void
.end method

.method public duration()J
    .locals 4

    iget-wide v0, p0, Lnet/rtccloud/sdk/Call;->endTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_0
    iget-wide v2, p0, Lnet/rtccloud/sdk/Call;->startTimestamp:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public end()V
    .locals 3

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->participant:Lnet/rtccloud/sdk/Participant;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Participant;->teardown()V

    iput-object v1, p0, Lnet/rtccloud/sdk/Call;->participant:Lnet/rtccloud/sdk/Participant;

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->context()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lnet/rtccloud/sdk/Call;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lnet/rtccloud/sdk/Call;->connectivityReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->conferenceModule:Lnet/rtccloud/sdk/ConferenceModule;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ConferenceModule;->teardown()V

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->videoModule:Lnet/rtccloud/sdk/VideoModule;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->teardown()V

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->screenshareModule:Lnet/rtccloud/sdk/ScreenshareModule;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ScreenshareModule;->teardown()V

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->audioModule:Lnet/rtccloud/sdk/AudioModule;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/AudioModule;->teardown()V

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->videoSink:Lnet/rtccloud/sdk/Sink$Video;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Sink;->teardown()V

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->screenshareSink:Lnet/rtccloud/sdk/Sink$Screenshare;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Sink;->teardown()V

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->frameFetcher:Lnet/rtccloud/sdk/FrameFetcher;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/FrameFetcher;->teardown()V

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->callModule:Lnet/rtccloud/sdk/CallModule;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/CallModule;->reset()V

    return-void
.end method

.method public endReason()Lnet/rtccloud/sdk/Call$EndReason;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->endReason:Lnet/rtccloud/sdk/Call$EndReason;

    return-object p0
.end method

.method public getProgressivexSink()Lnet/rtccloud/sdk/Sink$Progressivex;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->progressivexSink:Lnet/rtccloud/sdk/Sink$Progressivex;

    return-object p0
.end method

.method public hangup()V
    .locals 7

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "hangup()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->log:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v1, p0, Lnet/rtccloud/sdk/Call;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    sget-object v3, Lnet/rtccloud/sdk/Rtcc$Status;->NETWORK_LOST:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2, v3}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/rtccloud/sdk/Call;->log:Lnet/rtccloud/sdk/util/OldLogger;

    sget-object v3, Lnet/rtccloud/sdk/Call$Status;->CREATING:Lnet/rtccloud/sdk/Call$Status;

    sget-object v4, Lnet/rtccloud/sdk/Call$Status;->PROCEEDING:Lnet/rtccloud/sdk/Call$Status;

    sget-object v5, Lnet/rtccloud/sdk/Call$Status;->RINGING:Lnet/rtccloud/sdk/Call$Status;

    sget-object v6, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;Lnet/rtccloud/sdk/Call$Status;Lnet/rtccloud/sdk/Call$Status;Lnet/rtccloud/sdk/Call$Status;)Z

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 p0, 0x1

    iput-boolean p0, v2, Lnet/rtccloud/sdk/Call;->hasRequestedHangup:Z

    iget p0, v2, Lnet/rtccloud/sdk/Call;->id:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    iget-object p0, v2, Lnet/rtccloud/sdk/Call;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "Call not yet created, requesting hangup on next status"

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, v2, Lnet/rtccloud/sdk/Call;->nativeInterface:Lnet/rtccloud/sdk/Call$Native;

    sget-object v1, Lnet/rtccloud/sdk/Call$Control;->STOP:Lnet/rtccloud/sdk/Call$Control;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lnet/rtccloud/sdk/Call$Native;->control(Lnet/rtccloud/sdk/Call$Control;II)V

    return-void
.end method

.method public id()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/Call;->id:I

    return p0
.end method

.method public isConference()Z
    .locals 1

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->type:Lnet/rtccloud/sdk/Call$Type;

    sget-object v0, Lnet/rtccloud/sdk/Call$Type;->CONFERENCE_HOST:Lnet/rtccloud/sdk/Call$Type;

    if-eq p0, v0, :cond_1

    sget-object v0, Lnet/rtccloud/sdk/Call$Type;->CONFERENCE_ATTENDEE:Lnet/rtccloud/sdk/Call$Type;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isEscalating()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/Call;->isEscalating:Z

    return p0
.end method

.method public isProgressivex()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/Call;->progressivexStarted:Z

    return p0
.end method

.method public joinMVS()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/rtccloud/sdk/Call;->isEscalating:Z

    iget-object v1, p0, Lnet/rtccloud/sdk/Call;->nativeInterface:Lnet/rtccloud/sdk/Call$Native;

    sget-object v2, Lnet/rtccloud/sdk/Call$Control;->JOIN:Lnet/rtccloud/sdk/Call$Control;

    iget v3, p0, Lnet/rtccloud/sdk/Call;->id:I

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lnet/rtccloud/sdk/Call$Native;->control(Lnet/rtccloud/sdk/Call$Control;II)V

    sget-object v1, Lnet/rtccloud/sdk/Call$Type;->CONFERENCE_HOST:Lnet/rtccloud/sdk/Call$Type;

    iput-object v1, p0, Lnet/rtccloud/sdk/Call;->type:Lnet/rtccloud/sdk/Call$Type;

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->audioModule:Lnet/rtccloud/sdk/AudioModule;

    invoke-virtual {p0, v4, v0}, Lnet/rtccloud/sdk/AudioModule;->muteRecorder(ZZ)V

    return-void
.end method

.method public key()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->key:Ljava/lang/String;

    return-object p0
.end method

.method public parameters()Lnet/rtccloud/sdk/Call$Parameters;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->parameters:Lnet/rtccloud/sdk/Call$Parameters;

    return-object p0
.end method

.method public participant()Lnet/rtccloud/sdk/Participant;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->participant:Lnet/rtccloud/sdk/Participant;

    return-object p0
.end method

.method public progressivexStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/rtccloud/sdk/Call;->progressivexStarted:Z

    return-void
.end method

.method public progressivexStop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/rtccloud/sdk/Call;->progressivexStarted:Z

    return-void
.end method

.method public qualityIndicator()Lnet/rtccloud/sdk/Call$QualityIndicator;
    .locals 2

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->log:Lnet/rtccloud/sdk/util/OldLogger;

    sget-object v1, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    invoke-static {v0, p0, v1}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->nativeInterface:Lnet/rtccloud/sdk/Call$Native;

    invoke-interface {p0}, Lnet/rtccloud/sdk/Call$Native;->qualityIndicator()Lnet/rtccloud/sdk/Call$QualityIndicator;

    move-result-object p0

    return-object p0
.end method

.method public remoteType()Lnet/rtccloud/sdk/Call$RemoteType;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->remoteType:Lnet/rtccloud/sdk/Call$RemoteType;

    return-object p0
.end method

.method public rtcc()Lnet/rtccloud/sdk/Rtcc;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    return-object p0
.end method

.method public screenshare()Lnet/rtccloud/sdk/ScreenshareModule;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->screenshareModule:Lnet/rtccloud/sdk/ScreenshareModule;

    return-object p0
.end method

.method public setAnnotationTypeCallback(Lnet/rtccloud/sdk/event/AnnotationTypeCommand;)V
    .locals 0

    iput-object p1, p0, Lnet/rtccloud/sdk/Call;->annotationTypeCommand:Lnet/rtccloud/sdk/event/AnnotationTypeCommand;

    return-void
.end method

.method public setLiveTranslationNewSentenceCallback(Lnet/rtccloud/sdk/event/LiveTranslationNewSentence;)V
    .locals 0

    iput-object p1, p0, Lnet/rtccloud/sdk/Call;->liveTranslationNewSentenceCallback:Lnet/rtccloud/sdk/event/LiveTranslationNewSentence;

    return-void
.end method

.method public setUseNgaSVG(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/rtccloud/sdk/Call;->useNgaSVG:Z

    return-void
.end method

.method public sipId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->sipId:Ljava/lang/String;

    return-object p0
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->nativeInterface:Lnet/rtccloud/sdk/Call$Native;

    sget-object v1, Lnet/rtccloud/sdk/Call$Control;->START:Lnet/rtccloud/sdk/Call$Control;

    iget p0, p0, Lnet/rtccloud/sdk/Call;->id:I

    const/4 v2, -0x1

    invoke-interface {v0, v1, p0, v2}, Lnet/rtccloud/sdk/Call$Native;->control(Lnet/rtccloud/sdk/Call$Control;II)V

    return-void
.end method

.method public startNoVideo()V
    .locals 3

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->nativeInterface:Lnet/rtccloud/sdk/Call$Native;

    sget-object v1, Lnet/rtccloud/sdk/Call$Control;->STARTNOVIDEO:Lnet/rtccloud/sdk/Call$Control;

    iget p0, p0, Lnet/rtccloud/sdk/Call;->id:I

    const/4 v2, -0x1

    invoke-interface {v0, v1, p0, v2}, Lnet/rtccloud/sdk/Call$Native;->control(Lnet/rtccloud/sdk/Call$Control;II)V

    return-void
.end method

.method public startTranslation()Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->nativeInterface:Lnet/rtccloud/sdk/Call$Native;

    invoke-interface {p0}, Lnet/rtccloud/sdk/Call$Native;->startTranslation()Z

    move-result p0

    return p0
.end method

.method public stats()Lnet/rtccloud/sdk/Call$Stats;
    .locals 2

    new-instance p0, Lnet/rtccloud/sdk/Call$Stats;

    invoke-direct {p0}, Lnet/rtccloud/sdk/Call$Stats;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/rtccloud/sdk/Call$Stats;->timestamp:J

    return-object p0
.end method

.method public status()Lnet/rtccloud/sdk/Call$Status;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->status:Lnet/rtccloud/sdk/Call$Status;

    return-object p0
.end method

.method public stopTranslation()Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->nativeInterface:Lnet/rtccloud/sdk/Call$Native;

    invoke-interface {p0}, Lnet/rtccloud/sdk/Call$Native;->stopTranslation()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Call{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/rtccloud/sdk/Call;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/Call;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/Call;->status:Lnet/rtccloud/sdk/Call$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/Call;->type:Lnet/rtccloud/sdk/Call$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sipId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/Call;->sipId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', remoteType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/Call;->remoteType:Lnet/rtccloud/sdk/Call$RemoteType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/Call;->endReason:Lnet/rtccloud/sdk/Call$EndReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", traffic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->traffic()Lnet/rtccloud/sdk/Call$Traffic;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->duration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", activeDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->activeDuration()J

    move-result-wide v1

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public traffic()Lnet/rtccloud/sdk/Call$Traffic;
    .locals 1

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->traffic:Lnet/rtccloud/sdk/Call$Traffic;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lnet/rtccloud/sdk/Call$Traffic;

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->referenceTraffic:Lnet/rtccloud/sdk/Call$Traffic;

    invoke-direct {v0, p0}, Lnet/rtccloud/sdk/Call$Traffic;-><init>(Lnet/rtccloud/sdk/Call$Traffic;)V

    return-object v0
.end method

.method public type()Lnet/rtccloud/sdk/Call$Type;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->type:Lnet/rtccloud/sdk/Call$Type;

    return-object p0
.end method

.method public updateSipId(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lnet/rtccloud/sdk/Call;->sipId:Ljava/lang/String;

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object v0, v0, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v1, Lnet/rtccloud/sdk/event/call/SipEvent;

    invoke-direct {v1, p0, p1}, Lnet/rtccloud/sdk/event/call/SipEvent;-><init>(Lnet/rtccloud/sdk/Call;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public updateStatus(I)V
    .locals 3

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-static {p1}, Lnet/rtccloud/sdk/internal/Constants$CallStatus;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "updateStatus(status=%s)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0x7120

    if-eq p1, v0, :cond_6

    const/16 v0, 0x7150

    if-eq p1, v0, :cond_5

    const/16 v0, 0x7170

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "updateStatus(status=%s) Unknown status"

    invoke-virtual {p0, v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_0
    sget-object v0, Lnet/rtccloud/sdk/Call$Status;->ENDED:Lnet/rtccloud/sdk/Call$Status;

    packed-switch p1, :pswitch_data_2

    sget-object p1, Lnet/rtccloud/sdk/Call$EndReason;->UNEXPECTED:Lnet/rtccloud/sdk/Call$EndReason;

    iput-object p1, p0, Lnet/rtccloud/sdk/Call;->endReason:Lnet/rtccloud/sdk/Call$EndReason;

    goto :goto_1

    :pswitch_1
    sget-object p1, Lnet/rtccloud/sdk/Call$EndReason;->DEAD_PARTY:Lnet/rtccloud/sdk/Call$EndReason;

    iput-object p1, p0, Lnet/rtccloud/sdk/Call;->endReason:Lnet/rtccloud/sdk/Call$EndReason;

    goto :goto_1

    :pswitch_2
    iget-boolean p1, p0, Lnet/rtccloud/sdk/Call;->hasRequestedHangup:Z

    if-eqz p1, :cond_1

    sget-object p1, Lnet/rtccloud/sdk/Call$EndReason;->LOCAL:Lnet/rtccloud/sdk/Call$EndReason;

    goto :goto_0

    :cond_1
    sget-object p1, Lnet/rtccloud/sdk/Call$EndReason;->UNEXPECTED:Lnet/rtccloud/sdk/Call$EndReason;

    :goto_0
    iput-object p1, p0, Lnet/rtccloud/sdk/Call;->endReason:Lnet/rtccloud/sdk/Call$EndReason;

    goto :goto_1

    :pswitch_3
    sget-object p1, Lnet/rtccloud/sdk/Call$EndReason;->REMOTE:Lnet/rtccloud/sdk/Call$EndReason;

    iput-object p1, p0, Lnet/rtccloud/sdk/Call;->endReason:Lnet/rtccloud/sdk/Call$EndReason;

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lnet/rtccloud/sdk/Call;->endTimestamp:J

    new-instance p1, Lnet/rtccloud/sdk/Call$Traffic;

    iget-object v1, p0, Lnet/rtccloud/sdk/Call;->referenceTraffic:Lnet/rtccloud/sdk/Call$Traffic;

    invoke-direct {p1, v1}, Lnet/rtccloud/sdk/Call$Traffic;-><init>(Lnet/rtccloud/sdk/Call$Traffic;)V

    iput-object p1, p0, Lnet/rtccloud/sdk/Call;->traffic:Lnet/rtccloud/sdk/Call$Traffic;

    iget-object p1, p0, Lnet/rtccloud/sdk/Call;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->end()V

    goto :goto_3

    :pswitch_4
    const/16 v0, 0x7131

    if-ne p1, v0, :cond_2

    sget-object v0, Lnet/rtccloud/sdk/Call$RemoteType;->WEBRTC:Lnet/rtccloud/sdk/Call$RemoteType;

    iput-object v0, p0, Lnet/rtccloud/sdk/Call;->remoteType:Lnet/rtccloud/sdk/Call$RemoteType;

    :cond_2
    const/16 v0, 0x7132

    if-ne p1, v0, :cond_3

    sget-object p1, Lnet/rtccloud/sdk/Call$RemoteType;->DRIVER:Lnet/rtccloud/sdk/Call$RemoteType;

    iput-object p1, p0, Lnet/rtccloud/sdk/Call;->remoteType:Lnet/rtccloud/sdk/Call$RemoteType;

    :cond_3
    sget-object v0, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lnet/rtccloud/sdk/Call;->activeTimestamp:J

    invoke-direct {p0}, Lnet/rtccloud/sdk/Call;->registerConnectivityReceiver()V

    goto :goto_3

    :pswitch_5
    iget-object p1, p0, Lnet/rtccloud/sdk/Call;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "Waiting for secondary ACTIVE callback"

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/rtccloud/sdk/Call;->isEscalating:Z

    :goto_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    sget-object v0, Lnet/rtccloud/sdk/Call$Status;->PROCEEDING:Lnet/rtccloud/sdk/Call$Status;

    goto :goto_3

    :cond_6
    sget-object v0, Lnet/rtccloud/sdk/Call$Status;->RINGING:Lnet/rtccloud/sdk/Call$Status;

    :goto_3
    if-eqz v0, :cond_7

    iget-object p1, p0, Lnet/rtccloud/sdk/Call;->status:Lnet/rtccloud/sdk/Call$Status;

    if-eq v0, p1, :cond_7

    iput-object v0, p0, Lnet/rtccloud/sdk/Call;->status:Lnet/rtccloud/sdk/Call$Status;

    iget-object p1, p0, Lnet/rtccloud/sdk/Call;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object p1, p1, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v1, Lnet/rtccloud/sdk/event/call/StatusEvent;

    invoke-direct {v1, p0, v0}, Lnet/rtccloud/sdk/event/call/StatusEvent;-><init>(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)V

    invoke-virtual {p1, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    sget-object p1, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    if-ne v0, p1, :cond_7

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lnet/rtccloud/sdk/Call$1;

    invoke-direct {v0, p0}, Lnet/rtccloud/sdk/Call$1;-><init>(Lnet/rtccloud/sdk/Call;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x7130
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7140
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7140
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public useNgaSVG()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/Call;->useNgaSVG:Z

    return p0
.end method

.method public video()Lnet/rtccloud/sdk/VideoModule;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->videoModule:Lnet/rtccloud/sdk/VideoModule;

    return-object p0
.end method
