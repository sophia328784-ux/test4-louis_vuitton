.class public interface abstract Lnet/rtccloud/sdk/Rtcc$Native;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/Rtcc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# static fields
.field public static final JNI:Lnet/rtccloud/sdk/Rtcc$Native;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/Rtcc$Native$1;

    invoke-direct {v0}, Lnet/rtccloud/sdk/Rtcc$Native$1;-><init>()V

    sput-object v0, Lnet/rtccloud/sdk/Rtcc$Native;->JNI:Lnet/rtccloud/sdk/Rtcc$Native;

    return-void
.end method


# virtual methods
.method public abstract brutalDisconnect()V
.end method

.method public abstract connect(Lnet/rtccloud/sdk/Rtcc;IIIZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract connectMeeting(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V
.end method

.method public abstract disconnect()V
.end method

.method public abstract disconnectEnd()V
.end method

.method public abstract getAllMyChatRooms()I
.end method

.method public abstract getChatRoomForMID(Ljava/lang/String;)I
.end method

.method public abstract getChatRooms([Ljava/lang/String;I)I
.end method

.method public abstract getHistory(Ljava/lang/String;II)I
.end method

.method public abstract getVersion()I
.end method

.method public abstract nRegisterForTests()V
.end method

.method public abstract registerJWT(Ljava/lang/String;)I
.end method

.method public abstract resetFastMode()V
.end method

.method public abstract sendAvatar(Ljava/lang/String;I[B)V
.end method

.method public abstract sendChat(Ljava/lang/String;[BI)I
.end method

.method public abstract setJsVersion(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setLoggerLevel(I)V
.end method

.method public abstract setSamplingRate(I)V
.end method

.method public abstract setUrlReferer(Ljava/lang/String;)V
.end method

.method public abstract setVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateMetadata(Ljava/lang/String;[BI)I
.end method

.method public abstract updateTS(Ljava/lang/String;I)I
.end method
