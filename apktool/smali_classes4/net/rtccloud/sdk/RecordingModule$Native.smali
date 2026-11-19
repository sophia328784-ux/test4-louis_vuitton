.class interface abstract Lnet/rtccloud/sdk/RecordingModule$Native;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/RecordingModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# static fields
.field public static final JNI:Lnet/rtccloud/sdk/RecordingModule$Native;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/RecordingModule$Native$1;

    invoke-direct {v0}, Lnet/rtccloud/sdk/RecordingModule$Native$1;-><init>()V

    sput-object v0, Lnet/rtccloud/sdk/RecordingModule$Native;->JNI:Lnet/rtccloud/sdk/RecordingModule$Native;

    return-void
.end method


# virtual methods
.method public abstract start(Ljava/lang/String;Lnet/rtccloud/sdk/RecordingModule$Mode;)V
.end method
