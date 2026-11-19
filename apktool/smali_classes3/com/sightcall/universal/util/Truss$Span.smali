.class final Lcom/sightcall/universal/util/Truss$Span;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/util/Truss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Span"
.end annotation


# instance fields
.field final span:Ljava/lang/Object;

.field final start:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sightcall/universal/util/Truss$Span;->start:I

    iput-object p2, p0, Lcom/sightcall/universal/util/Truss$Span;->span:Ljava/lang/Object;

    return-void
.end method
