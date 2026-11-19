.class interface abstract Lnet/rtccloud/sdk/ConferenceModule$Native;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/ConferenceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# static fields
.field public static final JNI:Lnet/rtccloud/sdk/ConferenceModule$Native;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/ConferenceModule$Native$1;

    invoke-direct {v0}, Lnet/rtccloud/sdk/ConferenceModule$Native$1;-><init>()V

    sput-object v0, Lnet/rtccloud/sdk/ConferenceModule$Native;->JNI:Lnet/rtccloud/sdk/ConferenceModule$Native;

    return-void
.end method


# virtual methods
.method public abstract control(Lnet/rtccloud/sdk/ConferenceModule$Control;)V
.end method

.method public abstract passiveStreamsOnly(Z)V
.end method

.method public abstract setMirrorMode(Z)V
.end method
