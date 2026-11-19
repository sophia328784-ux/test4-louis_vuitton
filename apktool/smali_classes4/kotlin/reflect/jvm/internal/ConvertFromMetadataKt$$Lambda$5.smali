.class Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final b:Lkotlin/reflect/jvm/internal/types/AbstractKType;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/types/AbstractKType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$5;->b:Lkotlin/reflect/jvm/internal/types/AbstractKType;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$5;->b:Lkotlin/reflect/jvm/internal/types/AbstractKType;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->j()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->c(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
