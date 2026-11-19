.class public Lcom/networkbench/agent/impl/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/PrivacyDataType;->PrivacyDataAppVersion:Lcom/networkbench/agent/impl/PrivacyDataType;

    invoke-static {v0}, Lcom/networkbench/agent/impl/e/b;->a(Lcom/networkbench/agent/impl/PrivacyDataType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
