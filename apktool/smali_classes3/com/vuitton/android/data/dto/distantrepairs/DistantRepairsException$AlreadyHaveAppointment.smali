.class public final Lcom/vuitton/android/data/dto/distantrepairs/DistantRepairsException$AlreadyHaveAppointment;
.super Lcom/vuitton/android/data/dto/distantrepairs/DistantRepairsException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/distantrepairs/DistantRepairsException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlreadyHaveAppointment"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/distantrepairs/DistantRepairsException$AlreadyHaveAppointment;",
        "Lcom/vuitton/android/data/dto/distantrepairs/DistantRepairsException;",
        "",
        "message",
        "<init>",
        "(Ljava/lang/String;)V",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vuitton/android/data/dto/distantrepairs/DistantRepairsException;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vuitton/android/data/dto/distantrepairs/DistantRepairsException$AlreadyHaveAppointment;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/dto/distantrepairs/DistantRepairsException$AlreadyHaveAppointment;->b:Ljava/lang/String;

    return-object p0
.end method
