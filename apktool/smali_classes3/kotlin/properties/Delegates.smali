.class public final Lkotlin/properties/Delegates;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lkotlin/properties/Delegates;",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lkotlin/properties/Delegates;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/properties/Delegates;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlin/properties/Delegates;->a:Lkotlin/properties/Delegates;

    return-void
.end method

.method public static a()Lkotlin/properties/ReadWriteProperty;
    .locals 1

    new-instance v0, Lkotlin/properties/NotNullVar;

    invoke-direct {v0}, Lkotlin/properties/NotNullVar;-><init>()V

    return-object v0
.end method
