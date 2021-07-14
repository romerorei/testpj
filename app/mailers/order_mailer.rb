class OrderMailer < ApplicationMailer

    def email_to_store(order)
        @order = order
        mail to: order.store.email, subject: "Nueva Orden # #{order.id} creada #{order.created_at} "
    end
end
