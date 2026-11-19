.class public Lnet/rtccloud/sdk/Call$StatsHistory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatsHistory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/Call$StatsHistory$Nqi;,
        Lnet/rtccloud/sdk/Call$StatsHistory$Entry;,
        Lnet/rtccloud/sdk/Call$StatsHistory$Fps;
    }
.end annotation


# instance fields
.field final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/rtccloud/sdk/Call$StatsHistory$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/rtccloud/sdk/Call$StatsHistory;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lnet/rtccloud/sdk/Call$StatsHistory$Entry;)V
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Call$StatsHistory;->entries:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFps(IIII)V
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/Call$StatsHistory$Fps;

    invoke-direct {v0, p1, p2, p3, p4}, Lnet/rtccloud/sdk/Call$StatsHistory$Fps;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/Call$StatsHistory;->add(Lnet/rtccloud/sdk/Call$StatsHistory$Entry;)V

    return-void
.end method

.method public addNqi(IIIII)V
    .locals 6

    new-instance v0, Lnet/rtccloud/sdk/Call$StatsHistory$Nqi;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lnet/rtccloud/sdk/Call$StatsHistory$Nqi;-><init>(IIIII)V

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/Call$StatsHistory;->add(Lnet/rtccloud/sdk/Call$StatsHistory$Entry;)V

    return-void
.end method

.method public entries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/rtccloud/sdk/Call$StatsHistory$Entry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/rtccloud/sdk/Call$StatsHistory;->entries:Ljava/util/List;

    return-object p0
.end method
