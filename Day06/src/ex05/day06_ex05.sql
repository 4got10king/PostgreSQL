COMMENT ON TABLE person_discounts IS 'IИнформация о персональных скидках в зависимости от количества заказов;
COMMENT ON COLUMN person_discounts.id IS 'Уникальный идентификатор каждой записи таблицы';
COMMENT ON COLUMN person_discounts.person_id IS 'Уникальный идентификатор человека из списка заказов';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Уникальный идентификатор пиццерии, в которой человек сделал заказ';
COMMENT ON COLUMN person_discounts.discount IS 'Величина скидки рассчитывается в зависимости от количества заказов.';