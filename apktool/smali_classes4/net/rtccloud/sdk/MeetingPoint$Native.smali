.class interface abstract Lnet/rtccloud/sdk/MeetingPoint$Native;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/MeetingPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# static fields
.field public static final JNI:Lnet/rtccloud/sdk/MeetingPoint$Native;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint$Native$1;

    invoke-direct {v0}, Lnet/rtccloud/sdk/MeetingPoint$Native$1;-><init>()V

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint$Native;->JNI:Lnet/rtccloud/sdk/MeetingPoint$Native;

    return-void
.end method


# virtual methods
.method public abstract control(Ljava/lang/String;Lnet/rtccloud/sdk/MeetingPoint$Control;)V
.end method

.method public abstract control(Ljava/lang/String;Lnet/rtccloud/sdk/MeetingPoint$Control;Ljava/lang/String;)V
.end method

.method public abstract get(Ljava/lang/String;)V
.end method
