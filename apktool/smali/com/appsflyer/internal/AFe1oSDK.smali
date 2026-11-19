.class public final Lcom/appsflyer/internal/AFe1oSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AFKeystoreWrapper:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    const/4 v0, 0x3

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->g(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->e(J)J

    move-result-wide v0

    sput-wide v0, Lcom/appsflyer/internal/AFe1oSDK;->AFKeystoreWrapper:J

    return-void
.end method

.method public static final synthetic AFKeystoreWrapper()J
    .locals 2

    sget-wide v0, Lcom/appsflyer/internal/AFe1oSDK;->AFKeystoreWrapper:J

    return-wide v0
.end method
