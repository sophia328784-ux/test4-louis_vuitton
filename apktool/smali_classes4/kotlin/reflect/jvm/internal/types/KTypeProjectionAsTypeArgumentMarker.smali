.class public final Lkotlin/reflect/jvm/internal/types/KTypeProjectionAsTypeArgumentMarker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/types/KTypeProjectionAsTypeArgumentMarker;",
        "Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;",
        "Lkotlin/reflect/KTypeProjection;",
        "value",
        "<init>",
        "(Lkotlin/reflect/KTypeProjection;)V",
        "kotlin-reflection"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lkotlin/reflect/KTypeProjection;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KTypeProjection;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/types/KTypeProjectionAsTypeArgumentMarker;->a:Lkotlin/reflect/KTypeProjection;

    return-void
.end method
