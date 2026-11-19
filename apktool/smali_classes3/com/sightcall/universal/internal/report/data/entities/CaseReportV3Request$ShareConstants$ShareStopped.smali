.class public final Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStopped;
.super Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShareStopped"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStopped;",
        "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants;",
        "<init>",
        "()V",
        "sdk_installedRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStopped;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStopped;

    invoke-direct {v0}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStopped;-><init>()V

    sput-object v0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStopped;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants$ShareStopped;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "shareStopped"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$ShareConstants;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
