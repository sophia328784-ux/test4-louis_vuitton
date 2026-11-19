.class Lcom/networkbench/agent/impl/util/x$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/react/bridge/ReactMarker$MarkerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/util/x;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/util/x;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/util/x;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/util/x$1;->a:Lcom/networkbench/agent/impl/util/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V
    .locals 0

    sget-object p0, Lcom/facebook/react/bridge/ReactMarkerConstants;->CONTENT_APPEARED:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactMarkerConstants;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "appStart"

    invoke-static {p0}, Lcom/networkbench/agent/impl/NBSAppAgent;->setCustomOnResumeEndIns(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
