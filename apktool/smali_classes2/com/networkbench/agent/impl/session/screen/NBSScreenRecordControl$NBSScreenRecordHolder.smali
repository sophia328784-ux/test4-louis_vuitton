.class Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl$NBSScreenRecordHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NBSScreenRecordHolder"
.end annotation


# static fields
.field public static resource:Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;-><init>(Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl$1;)V

    sput-object v0, Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl$NBSScreenRecordHolder;->resource:Lcom/networkbench/agent/impl/session/screen/NBSScreenRecordControl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
