.class public abstract Lcom/sightcall/session/di/SessionModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/session/di/SessionModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\'\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H!\u00a2\u0006\u0002\u0008\u0008J\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH!\u00a2\u0006\u0002\u0008\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/sightcall/session/di/SessionModule;",
        "",
        "<init>",
        "()V",
        "provideSessionRepository",
        "Lcom/sightcall/session/SessionRepository;",
        "sessionRepositoryImpl",
        "Lcom/sightcall/session/SessionRepositoryImpl;",
        "provideSessionRepository$session_release",
        "provideReferenceDataSource",
        "Lcom/sightcall/session/datasource/reference/ReferenceDataSource;",
        "referenceDataSource",
        "Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;",
        "provideReferenceDataSource$session_release",
        "Companion",
        "session_release"
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
.field public static final Companion:Lcom/sightcall/session/di/SessionModule$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/session/di/SessionModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/session/di/SessionModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sightcall/session/di/SessionModule;->Companion:Lcom/sightcall/session/di/SessionModule$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract provideReferenceDataSource$session_release(Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;)Lcom/sightcall/session/datasource/reference/ReferenceDataSource;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method

.method public abstract provideSessionRepository$session_release(Lcom/sightcall/session/SessionRepositoryImpl;)Lcom/sightcall/session/SessionRepository;
    .annotation runtime Ldagger/Binds;
    .end annotation
.end method
