.class Lcom/networkbench/agent/impl/session/Span$1;
.super Lcom/networkbench/com/google/gson/reflect/TypeToken;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/session/Span;->mapToJsonObject(Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/networkbench/com/google/gson/reflect/TypeToken<",
        "Ljava/util/Map;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/networkbench/agent/impl/session/Span;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/session/Span;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/Span$1;->this$0:Lcom/networkbench/agent/impl/session/Span;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
