.class public abstract Landroidx/navigation/serialization/InternalNavType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/navigation/serialization/InternalNavType;",
        "",
        "navigation-common_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Landroidx/navigation/serialization/InternalNavType$IntNullableType$1;

.field public static final b:Landroidx/navigation/serialization/InternalNavType$BoolNullableType$1;

.field public static final c:Landroidx/navigation/serialization/InternalNavType$DoubleType$1;

.field public static final d:Landroidx/navigation/serialization/InternalNavType$DoubleNullableType$1;

.field public static final e:Landroidx/navigation/serialization/InternalNavType$FloatNullableType$1;

.field public static final f:Landroidx/navigation/serialization/InternalNavType$LongNullableType$1;

.field public static final g:Landroidx/navigation/serialization/InternalNavType$StringNonNullableType$1;

.field public static final h:Landroidx/navigation/serialization/InternalNavType$StringNullableArrayType$1;

.field public static final i:Landroidx/navigation/serialization/InternalNavType$StringNullableListType$1;

.field public static final j:Landroidx/navigation/serialization/InternalNavType$DoubleArrayType$1;

.field public static final k:Landroidx/navigation/serialization/InternalNavType$DoubleListType$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/navigation/serialization/InternalNavType$IntNullableType$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/navigation/NavType;-><init>(Z)V

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->a:Landroidx/navigation/serialization/InternalNavType$IntNullableType$1;

    new-instance v0, Landroidx/navigation/serialization/InternalNavType$BoolNullableType$1;

    invoke-direct {v0, v1}, Landroidx/navigation/NavType;-><init>(Z)V

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->b:Landroidx/navigation/serialization/InternalNavType$BoolNullableType$1;

    new-instance v0, Landroidx/navigation/serialization/InternalNavType$DoubleType$1;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroidx/navigation/NavType;-><init>(Z)V

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->c:Landroidx/navigation/serialization/InternalNavType$DoubleType$1;

    new-instance v0, Landroidx/navigation/serialization/InternalNavType$DoubleNullableType$1;

    invoke-direct {v0, v1}, Landroidx/navigation/NavType;-><init>(Z)V

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->d:Landroidx/navigation/serialization/InternalNavType$DoubleNullableType$1;

    new-instance v0, Landroidx/navigation/serialization/InternalNavType$FloatNullableType$1;

    invoke-direct {v0, v1}, Landroidx/navigation/NavType;-><init>(Z)V

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->e:Landroidx/navigation/serialization/InternalNavType$FloatNullableType$1;

    new-instance v0, Landroidx/navigation/serialization/InternalNavType$LongNullableType$1;

    invoke-direct {v0, v1}, Landroidx/navigation/NavType;-><init>(Z)V

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->f:Landroidx/navigation/serialization/InternalNavType$LongNullableType$1;

    new-instance v0, Landroidx/navigation/serialization/InternalNavType$StringNonNullableType$1;

    invoke-direct {v0, v2}, Landroidx/navigation/NavType;-><init>(Z)V

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->g:Landroidx/navigation/serialization/InternalNavType$StringNonNullableType$1;

    new-instance v0, Landroidx/navigation/serialization/InternalNavType$StringNullableArrayType$1;

    invoke-direct {v0, v1}, Landroidx/navigation/CollectionNavType;-><init>(Z)V

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->h:Landroidx/navigation/serialization/InternalNavType$StringNullableArrayType$1;

    new-instance v0, Landroidx/navigation/serialization/InternalNavType$StringNullableListType$1;

    invoke-direct {v0, v1}, Landroidx/navigation/CollectionNavType;-><init>(Z)V

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->i:Landroidx/navigation/serialization/InternalNavType$StringNullableListType$1;

    new-instance v0, Landroidx/navigation/serialization/InternalNavType$DoubleArrayType$1;

    invoke-direct {v0, v1}, Landroidx/navigation/CollectionNavType;-><init>(Z)V

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->j:Landroidx/navigation/serialization/InternalNavType$DoubleArrayType$1;

    new-instance v0, Landroidx/navigation/serialization/InternalNavType$DoubleListType$1;

    invoke-direct {v0, v1}, Landroidx/navigation/CollectionNavType;-><init>(Z)V

    sput-object v0, Landroidx/navigation/serialization/InternalNavType;->k:Landroidx/navigation/serialization/InternalNavType$DoubleListType$1;

    return-void
.end method
