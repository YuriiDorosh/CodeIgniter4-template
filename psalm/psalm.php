<?php

/**
 * Stub file for Psalm to recognize CodeIgniter framework functions and classes.
 */

namespace Psalm\Internal\Codebase;

use function view;

class InternalCodebase
{
    /**
     * @psalm-suppress UnrecognizedFunction
     */
    public function initFunctions(): void
    {
        if (!function_exists('view')) {
            /**
             * @psalm-suppress UndefinedFunction
             */
            function view(string $view, array $options = []): string
            {
                return '';
            }
        }
    }
}
