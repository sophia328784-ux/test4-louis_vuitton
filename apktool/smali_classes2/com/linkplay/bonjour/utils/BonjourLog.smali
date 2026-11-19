.class public Lcom/linkplay/bonjour/utils/BonjourLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkplay/bonjour/utils/BonjourLog$BonjourLogCallback;
    }
.end annotation


# static fields
.field private static logCallback:Lcom/linkplay/bonjour/utils/BonjourLog$BonjourLogCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/linkplay/bonjour/utils/BonjourLog;->logCallback:Lcom/linkplay/bonjour/utils/BonjourLog$BonjourLogCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/linkplay/bonjour/utils/BonjourLog$BonjourLogCallback;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setLogCallback(Lcom/linkplay/bonjour/utils/BonjourLog$BonjourLogCallback;)V
    .locals 0

    sput-object p0, Lcom/linkplay/bonjour/utils/BonjourLog;->logCallback:Lcom/linkplay/bonjour/utils/BonjourLog$BonjourLogCallback;

    return-void
.end method
