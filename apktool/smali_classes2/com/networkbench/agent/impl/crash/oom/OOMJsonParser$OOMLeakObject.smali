.class public Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser$OOMLeakObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/crash/oom/OOMJsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OOMLeakObject"
.end annotation


# instance fields
.field public className:Ljava/lang/String;

.field public extDetail:Ljava/lang/String;

.field public objectId:Ljava/lang/String;

.field public size:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
