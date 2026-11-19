.class public Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clj/fastble/scan/BleScanRuleConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:[Ljava/util/UUID;

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->a:[Ljava/util/UUID;

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->b:J

    return-void
.end method
