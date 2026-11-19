.class interface abstract Lnet/rtccloud/sdk/CallModule$Native;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/CallModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# static fields
.field public static final JNI:Lnet/rtccloud/sdk/CallModule$Native;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/CallModule$Native$1;

    invoke-direct {v0}, Lnet/rtccloud/sdk/CallModule$Native$1;-><init>()V

    sput-object v0, Lnet/rtccloud/sdk/CallModule$Native;->JNI:Lnet/rtccloud/sdk/CallModule$Native;

    return-void
.end method


# virtual methods
.method public abstract call(Ljava/lang/String;)Z
.end method

.method public abstract callAttendee(Ljava/lang/String;)Z
.end method

.method public abstract callExternal(Ljava/lang/String;)Z
.end method

.method public abstract callHost(Ljava/lang/String;)Z
.end method

.method public abstract callMirroring()Z
.end method

.method public abstract callSixDigits(Ljava/lang/String;)Z
.end method
