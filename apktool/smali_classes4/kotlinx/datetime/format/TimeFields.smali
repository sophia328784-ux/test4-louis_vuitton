.class abstract Lkotlinx/datetime/format/TimeFields;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c2\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lkotlinx/datetime/format/TimeFields;",
        "",
        "kotlinx-datetime"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

.field public static final b:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

.field public static final c:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

.field public static final d:Lkotlinx/datetime/internal/format/GenericFieldSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    new-instance v1, Lkotlinx/datetime/internal/format/PropertyAccessor;

    sget-object v2, Lkotlinx/datetime/format/TimeFields$hour$1;->b:Lkotlinx/datetime/format/TimeFields$hour$1;

    invoke-direct {v1, v2}, Lkotlinx/datetime/internal/format/PropertyAccessor;-><init>(Lkotlin/reflect/KMutableProperty1;)V

    const/16 v7, 0x38

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x17

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;-><init>(Lkotlinx/datetime/internal/format/Accessor;IILjava/lang/String;Ljava/lang/Integer;Lkotlinx/datetime/internal/format/FieldSign;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/datetime/format/TimeFields;->a:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    new-instance v1, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    new-instance v2, Lkotlinx/datetime/internal/format/PropertyAccessor;

    sget-object v0, Lkotlinx/datetime/format/TimeFields$minute$1;->b:Lkotlinx/datetime/format/TimeFields$minute$1;

    invoke-direct {v2, v0}, Lkotlinx/datetime/internal/format/PropertyAccessor;-><init>(Lkotlin/reflect/KMutableProperty1;)V

    const/16 v8, 0x38

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x3b

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;-><init>(Lkotlinx/datetime/internal/format/Accessor;IILjava/lang/String;Ljava/lang/Integer;Lkotlinx/datetime/internal/format/FieldSign;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lkotlinx/datetime/format/TimeFields;->b:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    new-instance v2, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    new-instance v3, Lkotlinx/datetime/internal/format/PropertyAccessor;

    sget-object v0, Lkotlinx/datetime/format/TimeFields$second$1;->b:Lkotlinx/datetime/format/TimeFields$second$1;

    invoke-direct {v3, v0}, Lkotlinx/datetime/internal/format/PropertyAccessor;-><init>(Lkotlin/reflect/KMutableProperty1;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v9, 0x28

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x3b

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v10}, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;-><init>(Lkotlinx/datetime/internal/format/Accessor;IILjava/lang/String;Ljava/lang/Integer;Lkotlinx/datetime/internal/format/FieldSign;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lkotlinx/datetime/format/TimeFields;->c:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    new-instance v3, Lkotlinx/datetime/internal/format/GenericFieldSpec;

    new-instance v4, Lkotlinx/datetime/internal/format/PropertyAccessor;

    sget-object v1, Lkotlinx/datetime/format/TimeFields$fractionOfSecond$1;->b:Lkotlinx/datetime/format/TimeFields$fractionOfSecond$1;

    invoke-direct {v4, v1}, Lkotlinx/datetime/internal/format/PropertyAccessor;-><init>(Lkotlin/reflect/KMutableProperty1;)V

    new-instance v6, Lkotlinx/datetime/internal/DecimalFraction;

    const/16 v1, 0x9

    invoke-direct {v6, v0, v1}, Lkotlinx/datetime/internal/DecimalFraction;-><init>(II)V

    const/16 v8, 0xa

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lkotlinx/datetime/internal/format/GenericFieldSpec;-><init>(Lkotlinx/datetime/internal/format/Accessor;Ljava/lang/String;Ljava/lang/Object;Lkotlinx/datetime/internal/format/FieldSign;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lkotlinx/datetime/format/TimeFields;->d:Lkotlinx/datetime/internal/format/GenericFieldSpec;

    new-instance v4, Lkotlinx/datetime/internal/format/GenericFieldSpec;

    new-instance v5, Lkotlinx/datetime/internal/format/PropertyAccessor;

    sget-object v0, Lkotlinx/datetime/format/TimeFields$amPm$1;->b:Lkotlinx/datetime/format/TimeFields$amPm$1;

    invoke-direct {v5, v0}, Lkotlinx/datetime/internal/format/PropertyAccessor;-><init>(Lkotlin/reflect/KMutableProperty1;)V

    const/16 v9, 0xe

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lkotlinx/datetime/internal/format/GenericFieldSpec;-><init>(Lkotlinx/datetime/internal/format/Accessor;Ljava/lang/String;Ljava/lang/Object;Lkotlinx/datetime/internal/format/FieldSign;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v11, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    new-instance v12, Lkotlinx/datetime/internal/format/PropertyAccessor;

    sget-object v0, Lkotlinx/datetime/format/TimeFields$hourOfAmPm$1;->b:Lkotlinx/datetime/format/TimeFields$hourOfAmPm$1;

    invoke-direct {v12, v0}, Lkotlinx/datetime/internal/format/PropertyAccessor;-><init>(Lkotlin/reflect/KMutableProperty1;)V

    const/16 v18, 0x38

    const/16 v19, 0x0

    const/4 v13, 0x1

    const/16 v14, 0xc

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v11 .. v19}, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;-><init>(Lkotlinx/datetime/internal/format/Accessor;IILjava/lang/String;Ljava/lang/Integer;Lkotlinx/datetime/internal/format/FieldSign;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
