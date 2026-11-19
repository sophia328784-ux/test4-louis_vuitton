.class public Lcom/clj/fastble/scan/BleScanRuleConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;
    }
.end annotation


# instance fields
.field public a:[Ljava/util/UUID;

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig;->a:[Ljava/util/UUID;

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig;->b:J

    return-void
.end method
