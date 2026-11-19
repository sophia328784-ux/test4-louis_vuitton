.class Lkotlin/reflect/jvm/internal/DescriptorKCallable$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final b:Ljava/util/List;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKCallable$$Lambda$8;->b:Ljava/util/List;

    iput p2, p0, Lkotlin/reflect/jvm/internal/DescriptorKCallable$$Lambda$8;->c:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/DescriptorKCallable$$Lambda$8;->b:Ljava/util/List;

    iget p0, p0, Lkotlin/reflect/jvm/internal/DescriptorKCallable$$Lambda$8;->c:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;

    return-object p0
.end method
