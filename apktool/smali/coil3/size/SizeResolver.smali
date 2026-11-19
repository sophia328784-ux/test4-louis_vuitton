.class public interface abstract Lcoil3/size/SizeResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00e6\u0080\u0001\u0018\u00002\u00020\u0001\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0002\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcoil3/size/SizeResolver;",
        "",
        "io.coil-kt.coil3:coil-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcoil3/size/RealSizeResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcoil3/size/Size;->c:Lcoil3/size/Size;

    new-instance v1, Lcoil3/size/RealSizeResolver;

    invoke-direct {v1, v0}, Lcoil3/size/RealSizeResolver;-><init>(Lcoil3/size/Size;)V

    sput-object v1, Lcoil3/size/SizeResolver;->a:Lcoil3/size/RealSizeResolver;

    return-void
.end method


# virtual methods
.method public abstract g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method
