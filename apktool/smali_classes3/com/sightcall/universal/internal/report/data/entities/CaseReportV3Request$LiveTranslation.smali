.class public abstract Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LiveTranslation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation$LiveTranslationSessionError;,
        Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation$LiveTranslationSessionStarted;,
        Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation$LiveTranslationSessionStopped;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0003\u0008\t\nB\u0011\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u0082\u0001\u0003\u000b\u000c\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "LiveTranslationSessionStarted",
        "LiveTranslationSessionStopped",
        "LiveTranslationSessionError",
        "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation$LiveTranslationSessionError;",
        "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation$LiveTranslationSessionStarted;",
        "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation$LiveTranslationSessionStopped;",
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


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation;->value:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$LiveTranslation;->value:Ljava/lang/String;

    return-object p0
.end method
